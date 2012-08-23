class UploadsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def new
    @upload = Upload.new
  end
  
  def create
    @upload = Upload.new(params[:upload])

    if @upload.valid?
      @upload.pdfa=params[:pdfa]
      @upload.jpeg2000=params[:jpeg2000]
      @upload.user_id=current_user.id

      @upload.save!
      UploadsWorker.perform_async(@upload.path)
      flash[:success] = "Your file was successfully uploaded!"
      redirect_to upload_path
    else
      flash[:error] = "There was a problem uploading your file!"
      render :new
    end
  end

  def destroy

  end

  protected
  def process_file


  end
end
