# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :zip_gz_download, :class => 'ZipGzDownloads' do
    user_id 1
    path "MyString"
    downloaded 1
    deletion_reminder 1
  end
end
