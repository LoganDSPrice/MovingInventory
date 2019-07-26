class AddPositionToDestinations < ActiveRecord::Migration[5.2]
  def change
    add_column :destinations, :position, :integer
  end
end
