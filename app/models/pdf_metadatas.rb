class PdfMetadatas < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :author,
                  :creation_date,
                  :last_modified,
                  :creator,
                  :producer,
                  :resource_name,
                  :title,
                  :pages,
                  :subject,
                  :keywords,
                  :licensed_to,
                  :possible_doc_title,
                  :possible_doc_keywords,
                  :file_id,
                  :user_id
end
