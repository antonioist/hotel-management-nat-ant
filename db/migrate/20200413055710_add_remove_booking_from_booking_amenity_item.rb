class AddRemoveBookingFromBookingAmenityItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_amenities, :booking, index: true
    add_reference :booking_items, :booking, index: true
  end
end
