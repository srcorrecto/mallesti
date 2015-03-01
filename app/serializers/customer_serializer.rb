class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :town, :city, :country, :zip_code, :phone, :cif, :email

  has_many :projects
end
