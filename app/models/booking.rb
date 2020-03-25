class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :worker
  belongs_to :client
  has_many :booking_amenities
  has_many :booking_items
  validates :category, :worker_id, presence: true
   CATEGORIES = ["3 hours", "Night", "Plus one hour"]
  validates :status, inclusion: {in: CATEGORIES}
end
