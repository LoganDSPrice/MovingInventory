class Box < ApplicationRecord
  belongs_to :destination, required: false
  belongs_to :house
  has_many :items, dependent: :nullify
end
