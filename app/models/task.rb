class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  # Constants
  VALID_TAGS = [
    :design, :development, :error, :briefing, :production
  ]

  field :title,       type: String
  field :description, type: String
  field :tag,         type: Symbol
  field :estimation,  type: Float

  belongs_to :project

  validates :title,       presence: true
  validates :estimation,  presence: true, numericality: { greater_than: 0.0 }
  validates :tag,         inclusion: { in: VALID_TAGS }
end
