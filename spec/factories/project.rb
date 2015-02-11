FactoryGirl.define do
  factory :project do
    name
    description { Faker::Lorem.paragraph }
  end
end
