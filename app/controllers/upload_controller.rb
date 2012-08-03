require "fileutils"

class UploadController < ApplicationController
  before_filter :authenticate_user!

  def new
    @upload = Upload.new
  end
  
  def create
    @upload = Upload.new(params[:upload])

    if @upload.valid?
      user_path = Rails.root.join("upload_lists/" + @user.username)
      puts user_path
      unless File.exists?(user_path)
        FileUtils.mkdir(user_path)
      end

      flash[:success] = "Your file was successfully uploaded!"
    else
      render :new
    end
  end
end
