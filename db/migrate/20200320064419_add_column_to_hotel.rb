class AddColumnToHotel < ActiveRecord::Migration[5.2]
  def change
    add_column :hotels, :email, :string
  end
end
