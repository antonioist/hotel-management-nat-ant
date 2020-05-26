class RoomCategory < ApplicationRecord
  has_many :rooms
  validates :category, :price, presence: true
  monetize :price_cents, numericality: {only_integer: true}

  def to_label
    category
  end

end
