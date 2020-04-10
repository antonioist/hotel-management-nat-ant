class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :worker
  belongs_to :client
  belongs_to :user
  belongs_to :amenities
  has_many :menu_items, through: :booking_items
  validates :category, :worker_id, presence: true
   CATEGORIES = ["3 hours", "night", "plus one hour"]
  validates :category, inclusion: {in: CATEGORIES}
end
