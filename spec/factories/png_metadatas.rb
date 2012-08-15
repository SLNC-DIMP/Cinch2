# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :png_metadata, :class => 'PngMetadatas' do
    black_is_zero "MyString"
  end
end
