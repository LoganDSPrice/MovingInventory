# == Schema Information
#
# Table name: houses
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ApplicationRecord
  has_many :boxes, dependent: :nullify
  has_many :items, through: :boxes

  def to_s
    name
  end
end
