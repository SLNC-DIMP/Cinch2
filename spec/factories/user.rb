FactoryGirl.define do
  factory :user do
    email 'test@email.com'
    encrypted_password ''
    username 'test_U!er'
    role 'authenticated'
  end
end