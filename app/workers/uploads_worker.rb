class DownloadsWorker
  include Sidekiq::Worker
  include ProcessUpload

  def perform(file_path)
    url_count = count_links(file_path)
    urls = read_file(file_path)

    urls.each do |link|
      if valid_link?(link)
        FilesForDownload.save
      end
    end
  end
end