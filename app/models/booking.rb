class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :worker
  belongs_to :client
  belongs_to :user
  # has_many :booking_amenities, inverse_of: :amenity
  has_many :booking_amenities, inverse_of: :booking
  has_many :booking_items, inverse_of: :menu_item
  accepts_nested_attributes_for :booking_amenities
  accepts_nested_attributes_for :booking_items
  validates :category, :worker_id, presence: true
   CATEGORIES = ["3 hours", "night", "plus one hour"]
  validates :category, inclusion: {in: CATEGORIES}
end
