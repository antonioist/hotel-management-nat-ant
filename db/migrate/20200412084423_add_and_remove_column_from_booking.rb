class AddAndRemoveColumnFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :amenity, index: true
    remove_reference :bookings, :menu_item, index: true
    add_reference :bookings, :booking_amenity, index: true
    add_reference :bookings, :booking_item, index: true
  end
end
