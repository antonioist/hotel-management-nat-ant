class Hotel < ApplicationRecord
  has_many :rooms
  has_many :workers
  has_many :users
  validates :name, :address, :phone_number, :email, presence: true
end
