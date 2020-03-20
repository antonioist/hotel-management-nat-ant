class BookingItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :booking
end
