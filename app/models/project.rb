class Project
  include Mongoid::Document

  field :name,        type: String
  field :description, type: String

  belongs_to :customer

  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :description, presence: true
end
