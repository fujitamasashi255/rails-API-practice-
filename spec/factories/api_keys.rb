FactoryBot.define do
  factory :api_key do
    user { nil }
    access_token { "MyString" }
    expires_at { "2022-08-26 03:07:15" }
  end
end
