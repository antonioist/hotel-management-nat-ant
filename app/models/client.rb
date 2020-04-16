class Client < ApplicationRecord
  has_many :bookings
  has_many :booking_amenities, through: :bookings, inverse_of: :client
  belongs_to :user
  accepts_nested_attributes_for :bookings
end
