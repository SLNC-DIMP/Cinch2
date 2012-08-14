class FileInfos < ActiveRecord::Base
  belongs_to :user

  attr_accessible :org_file_path, :temp_file_path, :file_type_id,
      :checksum_run, :remote_checksum, :checksum, :virus_check,
      :fulltext_available, :metadata, :dynamic_file, :last_modified,
      :zipped, :problem_file, :events_frozen, :expired_deleted

end
