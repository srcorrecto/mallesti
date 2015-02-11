FactoryGirl.define do
  sequence :name do |n|
    "Nombre #{n}"
  end

  sequence :email do |n|
    "user#{n}@email.com"
  end

  sequence :cif do |n|
    dni = "%08d" % n
    dni + "TRWAGMYFPDXBNJZSQVHLCKE"[dni.to_i % 23].chr
  end
end
