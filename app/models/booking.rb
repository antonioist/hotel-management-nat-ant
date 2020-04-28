class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :worker
  belongs_to :client
  belongs_to :user
  has_many :amenities, through: :booking_amenities
  has_many :menu_items, through: :booking_items
  has_many :booking_amenities
  has_many :booking_items
  accepts_nested_attributes_for :booking_amenities
  accepts_nested_attributes_for :booking_items
  validates :category, :worker_id, presence: true
   CATEGORIES = ["3 hours", "night", "plus one hour"]
  validates :category, inclusion: {in: CATEGORIES}
end

