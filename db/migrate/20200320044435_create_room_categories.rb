class CreateRoomCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :room_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
