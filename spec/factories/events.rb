FactoryBot.define do
  factory :event do
    title { 'MyString' }
    description { 'MyText' }
    date { '2023-09-21' }
    user { nil }
  end
end
