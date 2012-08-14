# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :error_type, :class => 'ErrorTypes' do
    error_message "MyString"
  end
end
