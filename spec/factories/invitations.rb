FactoryBot.define do
  factory :invitation do
    status { "MyString" }
    user { nil }
    event { nil }
    invitee { nil }
  end
end
