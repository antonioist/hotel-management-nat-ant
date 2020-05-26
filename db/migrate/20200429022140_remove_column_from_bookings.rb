class RemoveColumnFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :booking_amenity, index: true
    remove_reference :bookings, :booking_item, index: true
  end
end
