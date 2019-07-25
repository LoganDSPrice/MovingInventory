# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  box_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Foreign Keys
#
#  fk_rails_...  (box_id => boxes.id)
#

class Item < ApplicationRecord
  belongs_to :box, required: false

  has_one :house, through: :box
end
