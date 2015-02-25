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

  # Sólo se debe usar con attributes_for
  factory :customer_update, parent: :customer do
    name     "A new name"
    address  "A new address"
    town     "A new town"
    city     "A new city"
    country  "A new country"
    zip_code "A new zip code"
    phone    "A new phone"
    cif      "A new cif"
    email    "new@email.com"
  end
end
