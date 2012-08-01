class ContactMailer < ActionMailer::Base
  default from: "from@example.com"
  default :to => "to@example.com"

  def new_message(message)
    @message = message
    mail(:subject => "#{message.subject}")
  end
end
