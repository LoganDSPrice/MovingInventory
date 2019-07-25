class Destination < ApplicationRecord
  has_many :boxes, dependent: :nullify
end
