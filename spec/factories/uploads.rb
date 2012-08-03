# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :upload do
    path "MyString"
    processed 1
    user_id 1
  end
end
