# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :problem_file, :class => 'ProblemFiles' do
    error_id 1
    file_id 1
    csv_added 1
  end
end
