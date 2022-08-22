FactoryBot.define do
  factory :social_profile do
    user { nil }
    provider { "MyString" }
    uid { "MyString" }
    raw_info { "MyString" }
  end
end
