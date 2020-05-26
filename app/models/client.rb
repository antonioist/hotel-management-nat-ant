class Client < ApplicationRecord
  has_many :bookings, inverse_of: :client
  accepts_nested_attributes_for :bookings
end
