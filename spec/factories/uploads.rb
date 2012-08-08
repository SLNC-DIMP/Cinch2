# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :uploads do
    path "book_list.txt"
    pdfa 1
    jpeg2000 1
    processed "NULL"
    user_id 1
  end
end
