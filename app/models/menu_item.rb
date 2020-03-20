class MenuItem < ApplicationRecord
  has_many :booking_items
  validates :name, :category, :price, presence: true
  validates :price, numericality: {only_integer: true}
end
