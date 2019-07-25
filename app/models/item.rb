class Item < ApplicationRecord
  belongs_to :box, required: false

  has_one :house, through: :box
end
