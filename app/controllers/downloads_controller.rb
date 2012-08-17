class DownloadsController < ApplicationController
  before_filter :authenticate_user!

  include FileType
  include DirCreation
  include CurlDownloads

  def index
  end

  def create
    @download = FileInfos.create(:file_infos)
    if @download.save
      DownloadsWorker.perform_async(@download.id)
    end
  end
end
