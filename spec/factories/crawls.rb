# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :crawl do
    url "http://ncdcr.gov"
    pdfa 1
    jpeg2000 1
    processed "NULL"
    user_id 1
  end
end
