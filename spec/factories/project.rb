FactoryGirl.define do
  factory :project do
    name
    description { Faker::Lorem.paragraph }

    before(:create) do |project|
      project.customer = FactoryGirl.create(:customer) unless project.customer
    end
  end

  factory :project_update, parent: :project do
    name        "A new name"
    description "A new description"
  end
end
