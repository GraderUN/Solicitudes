class Estudiante
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: String
  field :nombre, type: String

  validates :id, presence: true, format: {with: /[0-9]/}

  validates :nombre, presence: true, format: {with: /[A-Za-z0-9]/}
end
