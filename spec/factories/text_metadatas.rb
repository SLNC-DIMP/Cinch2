# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :text_metadata, :class => 'TextMetadatas' do
    content_encoding "MyString"
    file_size "MyString"
    file_name "MyString"
    possible_doc_title "MyString"
    possible_doc_keywords "MyString"
    file_id 1
    user_id 1
    processed 1
  end
end
