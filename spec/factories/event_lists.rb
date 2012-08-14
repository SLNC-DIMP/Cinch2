# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_list, :class => 'EventLists' do
    event_name "MyString"
  end
end
