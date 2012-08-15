# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jpg_metadata, :class => 'JpgMetadatas' do
    author "MyString"
  end
end
