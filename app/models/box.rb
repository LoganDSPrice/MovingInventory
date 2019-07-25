class Box < ApplicationRecord
  belongs_to :destination, required: false
  belongs_to :house
  has_many :items, dependent: :nullify

  def to_s
    "#{id} - #{description} (#{house})"
  end
end
