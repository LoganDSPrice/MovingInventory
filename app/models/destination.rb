# == Schema Information
#
# Table name: destinations
#
#  id         :bigint(8)        not null, primary key
#  room_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer
#

class Destination < ApplicationRecord
  has_many :boxes, dependent: :nullify

  validates :position, uniqueness: true
end
