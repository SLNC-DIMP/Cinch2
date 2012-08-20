class TextMetadatas < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :content_encoding, :file_id, :file_name, :file_size, :possible_doc_keywords, :possible_doc_title, :user_id
end
# == Schema Information
#
# Table name: text_metadatas
#
#  id                    :integer(4)      not null, primary key
#  content_encoding      :string(50)
#  file_size             :string(12)
#  file_name             :string(1024)
#  possible_doc_title    :string(255)
#  possible_doc_keywords :string(255)
#  file_id               :integer(4)
#  user_id               :integer(8)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#

