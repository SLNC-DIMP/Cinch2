# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :file_type, :class => 'FileTypes' do
    file_type ""
    file_type_name "MyString"
  end
end
