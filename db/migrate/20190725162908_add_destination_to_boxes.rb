class AddDestinationToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_reference :boxes, :destination, foreign_key: true
  end
end
