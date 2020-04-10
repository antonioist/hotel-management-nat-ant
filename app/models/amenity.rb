class Amenity < ApplicationRecord
  has_many :booking_amenities
  has_many :bookings, through: :booking_amenities
  accepts_nested_attributes_for :booking_amenities
  def to_label
    drink
  end
end
