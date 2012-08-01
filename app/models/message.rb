# See http://matharvard.ca/posts/2011/aug/22/contact-form-in-rails-3/
# See http://railscasts.com/episodes/326-activeattr?view=asciicast
class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :body, :captcha, :captcha_key

  validates_presence_of :name, :email, :subject, :body, :captcha, :captcha_key
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end