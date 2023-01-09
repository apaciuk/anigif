FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-09 13:01:50" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
