class BookingItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :booking
  accepts_nested_attributes_for :menu_item
end

