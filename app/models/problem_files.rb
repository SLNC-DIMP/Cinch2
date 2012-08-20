class ProblemFiles < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :csv_added, :error_id, :file_id
end
# == Schema Information
#
# Table name: problem_files
#
#  id         :integer(4)      not null, primary key
#  error_id   :integer(3)
#  file_id    :integer(4)
#  csv_added  :integer(4)      default(0)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

