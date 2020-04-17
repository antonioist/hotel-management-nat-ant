class BookingAmenity < ApplicationRecord
  has_and_belongs_to_many :amenities
  has_and_belongs_to_many :booking
end

