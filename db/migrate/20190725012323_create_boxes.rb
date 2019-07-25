class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.string :description
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
