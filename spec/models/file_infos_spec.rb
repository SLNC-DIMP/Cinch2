require 'spec_helper'

describe FileInfos do
  pending "add some examples to (or delete) #{__FILE__}"
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

