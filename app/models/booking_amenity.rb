class BookingAmenity < ApplicationRecord
  belongs_to :booking
  belongs_to :amenity
end
