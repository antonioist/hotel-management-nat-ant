class RemoveColumnToAmenityForArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :amenity_id, :bigint, array: true, default: []
    add_column :bookings, :amenity_id, :bigint
  end
end
