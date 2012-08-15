# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gif_metadata, :class => 'GifMetadatas' do
    black_is_zero "MyString"
  end
end
