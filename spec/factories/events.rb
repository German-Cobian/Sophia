FactoryBot.define do
  factory :event do
    title { 'MyString' }
    description { 'MyString' }
    date { '2023-09-18' }
    location { 'MyString' }
    link { 'MyString' }
    user { nil }
  end
end
