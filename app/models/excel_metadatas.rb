class ExcelMetadatas < ActiveRecord::Base
  has_one :file_infos

  attr_accessible :app_name,
                  :app_version,
                  :author,
                  :company,
                  :content_type,
                  :creationdate,
                  :last_author,
                  :last_modified,
                  :creator,
                  :date_create,
                  :protected,
                  :publisher,
                  :resourcename,
                  :title,
                  :possible_doc_title,
                  :possible_doc_keywords,
                  :file_id,
                  :user_id
end
# == Schema Information
#
# Table name: excel_metadatas
#
#  id                    :integer(4)      not null, primary key
#  app_name              :string(50)
#  app_version           :string(50)
#  author                :string(255)
#  company               :string(255)
#  content_type          :string(100)
#  creationdate          :string(50)
#  last_author           :string(255)
#  last_modified         :string(255)
#  creator               :string(255)
#  date_create           :string(255)
#  protected             :string(25)
#  publisher             :string(255)
#  resourcename          :string(255)
#  title                 :string(255)
#  possible_doc_title    :string(255)
#  possible_doc_keywords :string(255)
#  file_id               :integer(4)
#  user_id               :integer(8)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#

