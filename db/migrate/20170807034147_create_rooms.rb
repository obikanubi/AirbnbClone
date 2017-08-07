class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.text :description
      t.integer :bedrooms
      t.integer :beds
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
