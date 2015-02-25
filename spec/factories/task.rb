FactoryGirl.define do
  factory :task do
    title { Faker::Name.title }
    description { Faker::Lorem.paragraph }
    tag { Task::VALID_TAGS.sample }
    estimation { (rand(10) + 1).to_f }
  end

  factory :task_update, parent: :task do
    title "A new title"
    description "A new description"
    tag :design
    estimation 4.6
  end
end
