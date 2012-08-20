class UploadsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def new
 #   @uploads = Uploads.new
  end
  
  def create
  #  @uploads = Uploads.new(params[:uploads])

    if @uploads.valid?
      @uploads.pdfa=params[:pdfa]
      @uploads.jpeg2000=params[:jpeg2000]
      @uploads.user_id=current_user.id

      @uploads.save!

      flash[:success] = "Your file was successfully uploaded!"
      redirect_to uploads_path
    else
      render :new
    end
  end

  def destroy

  end
end
