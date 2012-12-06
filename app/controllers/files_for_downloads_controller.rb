class FilesForDownloadsController < ApplicationController
  include ProcessUpload

  def new
    @downloads = FilesForDownloads.new
  end

  def create
    query_values = []
    @downloads = FilesForDownloads.new
    @upload = Upload.find(params[:id].to_s)
    links = read_file(@upload.path)

    links.each do |link|
       query_values << { :url => link, :user_uploads_id => @upload.id, :user_id => @upload.user_id }
    end

    @downloads.create(query_values)
    if @downloads.save!
      processed = true
    else
      processed = false
    end

    render :layout => false
    redirect_to downloads_path(:status => processed)
  end
  handle_asynchronously :create

end