require "fileutils"

class UploadsController < ApplicationController
  before_filter :authenticate_user!

  def new
  end
  
  def create
    @upload = Upload.new(params[:upload])

      if @upload.valid?
        user_path = Rails.root.join("upload_lists/" + @user.username)

        unless File.exists?(user_path)
          FileUtils.mkdir(user_path)
        end

        flash[:success] = "Your file was successfully uploaded!"
      else
        flash[:error] = "Your file could not be uploaded!"
        render new
      end
  end
end
