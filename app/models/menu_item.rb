class MenuItem < ApplicationRecord
  has_many :booking_items
  has_many :bookings, through: :booking_items
  validates :name, :category, :price, presence: true
  # monetize :price_cents, numericality: {only_integer: true}
  CATEGORIES = ["Food", "Drink", "Toy"]
end
