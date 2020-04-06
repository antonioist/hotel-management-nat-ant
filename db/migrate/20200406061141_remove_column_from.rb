class RemoveColumnFrom < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :first_name, :string
    remove_column :bookings, :last_name, :string
    remove_column :bookings, :email, :string
    remove_column :bookings, :social_number, :string
  end
end
