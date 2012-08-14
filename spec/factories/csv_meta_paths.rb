# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :csv_meta_path, :class => 'CsvMetaPaths' do
    user_id ""
    path ""
    zipped 1
  end
end
