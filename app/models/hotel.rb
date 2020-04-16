class Hotel < ApplicationRecord
  has_many :rooms
  has_many :workers
  has_many :users
  has_many :room_categories, through: :rooms
  has_many :amenities, through: :booking_amenities
  has_many :menu_items, through: :booking_items
  validates :name, :address, :phone_number, :email, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
