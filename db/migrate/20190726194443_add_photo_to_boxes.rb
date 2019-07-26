class AddPhotoToBoxes < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :photo, :string
  end
end
