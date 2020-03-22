class RoomCategory < ApplicationRecord
  has_many :rooms
  belongs_to :hotel
  validates :category, :price, presence: true
  validates :price, numericality: {only_integer: true}
end
