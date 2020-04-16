class AddColumnAmenityIdToBooking < ActiveRecord::Migration[5.2]
  def change
   add_reference :bookings, :amenity, index: true
   add_reference :bookings, :menu_item, index: true
  end
end
