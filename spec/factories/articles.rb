FactoryBot.define do
  factory :article do
    user { nil }
    sequence(:title){ |n| "Title#{n}" }
    sequence(:contents){ |n| "Contents#{n}" }
    status { 0 }
  end
end
