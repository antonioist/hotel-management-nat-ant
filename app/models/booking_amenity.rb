class BookingAmenity < ApplicationRecord
  belongs_to :amenity
  belongs_to :booking
  # validates_presence_of :amenity
  # validates_presence_of :booking
  accepts_nested_attributes_for :amenity
end
