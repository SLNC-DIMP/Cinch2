module ProcessUpload
  # Extract links from the file
  def read_file(file_path)
    lines = []
    if File.exists?(file_path)
      fh = File.open(file_path)
      fh.each_line { |l|
        lines << l unless line_empty(l)
      }
      fh.close
      lines
    end
  end

  # Count the number of links in the file
  def count_links(file_path)
    read_file(file_path).length
  end

  # Make sure a link is a valid url
  # regex from http://msdn.microsoft.com/en-us/library/ff650303.aspx
  def valid_link?(link)
    regex = /^http(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;%\$#_]*)?$/
    if regex.match(link)
      true
    else
      false
    end
  end

  # Strip empty lines out of list
  # TODO rails blank? may work here too.
  # http://stackoverflow.com/questions/7339292/ruby-remove-empty-lines-from-string?lq=1
  def line_empty(line)
    /^$\n/.match(line)
  end
end