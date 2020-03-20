class AddColumnToRoomCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :room_categories, :price, :integer
  end
end
