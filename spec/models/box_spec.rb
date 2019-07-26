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
#  photo          :string
#
# Foreign Keys
#
#  fk_rails_...  (destination_id => destinations.id)
#  fk_rails_...  (house_id => houses.id)
#

require "rails_helper"

RSpec.describe Box, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
