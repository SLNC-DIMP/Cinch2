class DownloadsWorker
  include Sidekiq::Worker

  def perform()
     include CurlDownloads
  end
end