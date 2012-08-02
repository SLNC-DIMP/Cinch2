class ContactMailer < ActionMailer::Base
  default to: "to@example.com"

  def new_message(message)
    @message = message
    mail(from: message.email, :subject => "#{message.subject}")
  end
end
