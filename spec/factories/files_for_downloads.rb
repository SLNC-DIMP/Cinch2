# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :files_for_download, :class => 'FilesForDownloads' do
    url "MyString"
    user_uploads_id 1
    user_id 1
    processed 1
  end
end
