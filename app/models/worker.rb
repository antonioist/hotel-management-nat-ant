class Worker < ApplicationRecord
  belongs_to :hotel
  has_many :bookings
  validates :first_name, :last_name, presence: true

  def to_label
    "#{first_name} #{last_name}"
  end

end
