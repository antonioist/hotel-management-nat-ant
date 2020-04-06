class Client < ApplicationRecord
  has_many :bookings, :dependent => :destroy
  accepts_nested_attributes_for :bookings, allow_destroy: true
end
