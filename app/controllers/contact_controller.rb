class ContactController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid? && @message.valid_with_captcha?
      ContactMailer.new_message(@message).deliver
      flash[:success] = "Message was successfully sent."
      redirect_to(root_path)
    else
      render :new
    end
  end
end
