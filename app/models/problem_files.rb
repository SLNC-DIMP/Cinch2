class ProblemFiles < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :csv_added, :error_id, :file_id
end
