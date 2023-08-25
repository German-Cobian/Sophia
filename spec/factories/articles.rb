FactoryBot.define do
  factory :article do
    title { 'MyString' }
    body { Faker::Lorem.paragraphs }
    user { nil }
  end
end
