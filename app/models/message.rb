# See http://matharvard.ca/posts/2011/aug/22/contact-form-in-rails-3/
# See http://railscasts.com/episodes/326-activeattr?view=asciicast
# SimpleCaptcha only works with ActiveRecord, hence the need to include it
class Message
  include ActiveAttr::Model
  include SimpleCaptcha::ModelHelpers

  attr_accessor :name, :email, :subject, :body, :captcha, :captcha_key

  validates_presence_of :name, :email, :subject, :body
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  apply_simple_captcha message: "Incorrect image letters entered"
end