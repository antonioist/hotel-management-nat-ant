class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :worker
  belongs_to :client
  belongs_to :user
  has_many :booking_amenities
  has_many :booking_items
  has_and_belongs_to_many :amenities, through: :booking_amenities
  has_and_belongs_to_many :menu_items, through: :booking_items
  accepts_nested_attributes_for :amenities
  accepts_nested_attributes_for :menu_items
  validates :category, :worker_id, presence: true
   CATEGORIES = ["3 hours", "night", "plus one hour"]
  validates :category, inclusion: {in: CATEGORIES}
end

