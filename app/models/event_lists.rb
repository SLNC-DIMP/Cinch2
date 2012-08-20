class EventLists < ActiveRecord::Base
  attr_accessible :event_name
end
# == Schema Information
#
# Table name: event_lists
#
#  id         :integer(4)      not null, primary key
#  event_name :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

