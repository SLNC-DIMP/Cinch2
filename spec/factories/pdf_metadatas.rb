# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pdf_metadata, :class => 'PdfMetadatas' do
    author "MyString"
  end
end
