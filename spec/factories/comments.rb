FactoryBot.define do
  factory :comment do
    article { nil }
    user { nil }
    contents { "MyText" }
  end
end
