class CsvMetaPaths < ActiveRecord::Base
  belongs_to :user

  attr_accessible :path, :user_id, :zipped
end
