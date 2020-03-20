class Room < ApplicationRecord
  belongs_to :hotel
  belongs_to :room_category
  has_many :bookings
  validates :number, presence: true

end
