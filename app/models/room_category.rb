class RoomCategory < ApplicationRecord
  has_many :rooms
  validates :category, presence: true
end
