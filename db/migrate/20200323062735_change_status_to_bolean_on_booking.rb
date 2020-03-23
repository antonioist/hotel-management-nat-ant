class ChangeStatusToBoleanOnBooking < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :status, :string
    add_column :bookings, :status, :boolean, default: false
  end
end
