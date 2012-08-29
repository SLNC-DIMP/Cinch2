class UploadsWorker
  include Sidekiq::Worker
  include ProcessUpload

  # @param [Object] file
  def perform(file_path)
    links = read_file(file_path)

    links.each do |f|
      FilesForDownloads.create(url: f.chomp, user_id: 1)
    end
  end
end