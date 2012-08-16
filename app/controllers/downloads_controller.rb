class DownloadsController < ApplicationController
  before_filter :authenticate_user!

  include FileType
  include DirCreation
  include CurlDownloads

  def index
  end

  def create

  end
end
