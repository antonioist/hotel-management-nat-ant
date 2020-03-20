class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :category
      t.boolean :status, default: false
      t.references :room, foreign_key: true
      t.references :worker, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
