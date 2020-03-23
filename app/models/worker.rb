class Worker < ApplicationRecord
  belongs_to :hotel
  has_many :bookings
  validates :first_name, :last_name, presence: true
end