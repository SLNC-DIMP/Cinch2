class FileInfos < ActiveRecord::Base
  belongs_to :user
  has_one  :file_event_histories
  has_one  :problem_files
  has_many :event_lists, :through => :file_event_histories
  has_many :error_types, :through => :problem_files

  attr_accessible :org_file_path, :temp_file_path, :file_type_id,
      :checksum_run, :remote_checksum, :checksum, :virus_check,
      :fulltext_available, :metadata, :dynamic_file, :last_modified,
      :zipped, :problem_file, :events_frozen, :expired_deleted

end
# == Schema Information
#
# Table name: file_infos
#
#  id                 :integer(4)      not null, primary key
#  org_file_path      :string(2084)
#  temp_file_path     :string(1000)
#  file_type_id       :integer(1)      default(0)
#  checksum_run       :integer(1)      default(0)
#  remote_checksum    :string(40)
#  checksum           :string(40)
#  virus_check        :integer(1)      default(0)
#  fulltext_available :integer(1)      default(0)
#  metadata           :integer(1)      default(0)
#  dynamic_file       :integer(1)      default(0)
#  last_modified      :string(15)
#  zipped             :integer(1)      default(0)
#  problem_file       :integer(1)      default(0)
#  events_frozen      :integer(1)      default(0)
#  expired_deleted    :integer(1)      default(0)
#  user_id            :integer(1)      default(0)
#  upload_file_id     :integer(1)      default(0)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

