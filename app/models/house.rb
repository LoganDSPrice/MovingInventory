class House < ApplicationRecord
  has_many :boxes, dependent: :nullify
  has_many :items, through: :boxes

  def to_s
    name
  end
end
