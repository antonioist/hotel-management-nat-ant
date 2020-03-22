class RoomCategory < ApplicationRecord
  has_many :rooms
  validates :category, :price, presence: true
  validates :price, numericality: {only_integer: true}
end
