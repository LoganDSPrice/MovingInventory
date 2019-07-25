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

require "rails_helper"

RSpec.describe Item, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
