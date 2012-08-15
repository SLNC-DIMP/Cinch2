# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ppt_metadata, :class => 'PptMetadatas' do
    app_name "MyString"
  end
end
