# See http://stackoverflow.com/questions/6773413/how-to-get-files-count-in-a-directory-using-ruby
module DirCreation
  def start_dir(list_owner)
    user_base_dir = File.join(Rails.root, 'downloads', list_owner)
    new_dir(user_base_dir)

    dirs = current_dirs(user_base_dir)

    if not dirs.empty?
      working_dir = File.join(Rails.root, 'downloads', list_owner, dirs[-1])
    else
      first_download_dir =  File.join(Rails.root, 'downloads', list_owner, list_owner + '_0')
      working_dir = new_dir(first_download_dir)
    end
  end

  def current_directory(current_dir)
    if file_count(current_dir) < 500
      working_dir = current_dir
    else
      dir_suffix = reg_match(current_dir)
      dir_body = current_dir.sub(/_\d+$/, '')
      next_dir_num = dir_suffix + 1
      working_dir = dir_body + '_' + next_dir_num.to_s
    end

    new_dir(working_dir)

    working_dir
  end

  def current_user_dir(current_user)
    start_directory = start_dir(current_user)
    current_directory(start_directory)
  end

  protected
  def file_count(current_dir)
    file_count = 0
    Dir.foreach(current_dir) do |file|
      if !File.directory?(file)
        file_count += 1
      end
    end
  end

  def current_dirs(user_base_dir)
    user_dirs = []
    Dir.foreach(user_base_dir) do |dir|
      if File.directory?(dir) && dir[0] != '.'
        user_dirs << dir
      end
    end

    user_dirs.sort_by { |i| reg_match(i) }
  end

  def reg_match(search_string)
    search_string.match('(\d+$)')[0].to_i
  end

  def new_dir(dir)
    if !File.exists?(dir)
      Dir.mkdir(dir)
    end
  end
end