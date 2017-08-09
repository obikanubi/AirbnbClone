class AddAddressToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :address, :text
  end
end
