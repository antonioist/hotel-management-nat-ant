class CreateBookingItems < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_items do |t|
      t.references :menu_item, foreign_key: true
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
