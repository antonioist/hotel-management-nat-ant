class AddPriceToMenuItem < ActiveRecord::Migration[5.2]
  def change
    add_monetize :menu_items, :price, currency: { present: false }
    remove_column :menu_items, :price, :integer
  end
end
