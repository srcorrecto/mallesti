FactoryGirl.define do
  factory :task do
    title { Faker::Name.title }
    description { Faker::Lorem.paragraph }
    tag { Task::VALID_TAGS.sample }
    estimation { rand(10) + 1 }
  end
end
