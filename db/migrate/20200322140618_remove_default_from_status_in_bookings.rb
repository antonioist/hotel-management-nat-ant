class RemoveDefaultFromStatusInBookings < ActiveRecord::Migration[5.2]
  def change
  remove_column :bookings, :status, :string, default: false
  add_column :bookings, :status, :string
  end
end
