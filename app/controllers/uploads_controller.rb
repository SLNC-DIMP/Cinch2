require "fileutils"

class UploadsController < ApplicationController
  before_filter :authenticate_user!

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

      flash[:success] = "Your file was successfully uploaded!"
      redirect_to uploads_path
    else
      render :new
    end
  end

  def process_files
    @uploads = Upload.where(:processed => 0)
  end
end
