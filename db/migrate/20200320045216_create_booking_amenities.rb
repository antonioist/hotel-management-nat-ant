class CreateBookingAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_amenities do |t|
      t.references :booking, foreign_key: true
      t.references :amenity, foreign_key: true

      t.timestamps
    end
  end
end
