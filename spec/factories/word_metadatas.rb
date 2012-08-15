# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :word_metadata, :class => 'WordMetadatas' do
    app_name "MyString"
  end
end
