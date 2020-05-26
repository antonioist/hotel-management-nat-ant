class AddColumnToAmenityForArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :amenity_id, :bigint
    add_column :bookings, :amenity_id, :bigint, array: true, default: []
  end
end
