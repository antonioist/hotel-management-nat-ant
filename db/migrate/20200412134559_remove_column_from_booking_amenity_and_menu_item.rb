class RemoveColumnFromBookingAmenityAndMenuItem < ActiveRecord::Migration[5.2]
  def change
    remove_reference :booking_amenities, :booking, index: true
    remove_reference :booking_items, :booking, index: true
  end
end
