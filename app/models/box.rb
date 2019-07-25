# == Schema Information
#
# Table name: boxes
#
#  id             :bigint(8)        not null, primary key
#  description    :string
#  house_id       :bigint(8)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  destination_id :bigint(8)
#
# Foreign Keys
#
#  fk_rails_...  (destination_id => destinations.id)
#  fk_rails_...  (house_id => houses.id)
#

class Box < ApplicationRecord
  belongs_to :destination, required: false
  belongs_to :house
  has_many :items, dependent: :nullify

  def to_s
    "#{id} - #{description} (#{house})"
  end
end
