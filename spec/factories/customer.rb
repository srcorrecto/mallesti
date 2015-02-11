FactoryGirl.define do
  factory :customer do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
    town { Faker::Address.city }
    city { Faker::Address.city }
    country { Faker::Address.country }
    zip_code { Faker::Address.zip_code }
    phone { Faker::PhoneNumber.cell_phone }
    cif
    email
  end
end
