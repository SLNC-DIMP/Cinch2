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

      if @upload.save!

        UploadsWorker.perform_async(@upload.path.current_path)

        flash[:success] = "Your file was successfully uploaded! We'll notify when your files are ready."
        redirect_to upload_path
      else
        flash[:error] = "There was a problem uploading your file!"
        render :new
      end
    end
  end

  def destroy

  end
end