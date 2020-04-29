class BookingItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :booking
  validates_presence_of :menu_item
  validates_presence_of :booking
  accepts_nested_attributes_for :menu_item
end
