class ErrorTypes < ActiveRecord::Base
  attr_accessible :error_message
end
# == Schema Information
#
# Table name: error_types
#
#  id            :integer(4)      not null, primary key
#  error_message :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

