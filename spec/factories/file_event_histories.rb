# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :file_event_history, :class => 'FileEventHistories' do
    file_id 1
    event_id 1
  end
end
