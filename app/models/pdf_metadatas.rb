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
# == Schema Information
#
# Table name: pdf_metadatas
#
#  id                    :integer(4)      not null, primary key
#  author                :string(250)
#  creation_date         :string(30)
#  last_modified         :string(30)
#  creator               :string(250)
#  producer              :string(250)
#  resource_name         :string(250)
#  title                 :string(500)
#  pages                 :integer(8)
#  subject               :string(250)
#  keywords              :string(500)
#  licensed_to           :string(250)
#  possible_doc_title    :string(255)
#  possible_doc_keywords :string(255)
#  file_id               :integer(4)
#  user_id               :integer(8)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#

