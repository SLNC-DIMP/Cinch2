# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :excel_metadata, :class => 'ExcelMetadatas' do
    app_name "MyString"
  end
end
