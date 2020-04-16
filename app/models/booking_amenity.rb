class BookingAmenity < ApplicationRecord
  belongs_to :amenity
  belongs_to :booking
end

