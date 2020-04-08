class Client < ApplicationRecord
  has_many :bookings, inverse_of: :client
  belongs_to :user
  accepts_nested_attributes_for :bookings
end
