class TextMetadatas < ActiveRecord::Base
  attr_accessible :content_encoding, :file_id, :file_name, :file_size, :possible_doc_keywords, :possible_doc_title, :user_id
end
