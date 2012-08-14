# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :file_info, :class => 'FileInfos' do
    org_file_path "MyString"
  end
end
