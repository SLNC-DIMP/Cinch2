# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :crawl do
    url "MyString"
    processed 1
    user_id 1
  end
end
