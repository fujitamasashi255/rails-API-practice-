FactoryBot.define do
  factory :article do
    user { nil }
    title { "MyString" }
    contents { "MyText" }
    status { 1 }
  end
end
