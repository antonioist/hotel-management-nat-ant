class AddPriceToRoomCategory < ActiveRecord::Migration[5.2]
  def change
    add_monetize :room_categories, :price, currency: { present: false }
    remove_column :room_categories, :price, :integer
  end
end
