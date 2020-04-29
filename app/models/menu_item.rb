class MenuItem < ApplicationRecord
  has_many :booking_items, inverse_of: :menu_item
  has_many :bookings, through: :booking_items
  validates :name, :category, presence: true
  monetize :price_cents, numericality: {only_integer: true}
  CATEGORIES = ["Food", "Drink", "Toy"]

  def to_label
     "#{name} | #{humanized_money_with_symbol(price)}"
  end

end
