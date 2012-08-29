class FilesForDownloadsController < ApplicationController
  def new
    @downloads = FilesForDownloads.new
  end
end