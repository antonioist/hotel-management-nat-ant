class BookingAmenity < ApplicationRecord
  belongs_to :amenity
  belongs_to :booking
  accepts_nested_attributes_for :amenity
end
