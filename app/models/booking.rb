class Booking < ApplicationRecord
  belongs_to :room_number
  belongs_to :worker
  belongs_to :client
end
