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

require "rails_helper"

RSpec.describe Destination, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
