class Amenity < ApplicationRecord
  has_many :booking_amenities
  has_many :bookings, inverse_of: :amenities
  accepts_nested_attributes_for :bookings

  def to_label
    drink
  end
end
