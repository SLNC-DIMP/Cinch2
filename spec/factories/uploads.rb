# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :uploads do
    path { File.open(File.join(Rails.root, 'spec', 'support', 'test_files', 'book_list.txt')) }
    pdfa 1
    jpeg2000 1
    processed "NULL"
    user_id 1

 #   logo { File.open(File.join(Rails.root, 'spec', 'support', 'brands', 'logos', 'logo_image.jpg')) }
  end
end
