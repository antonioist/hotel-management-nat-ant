class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_category
  has_many :bookings
  validates :number, :price, presence: true
  validates :number, :price, numericality: {only_integer: true}
end
