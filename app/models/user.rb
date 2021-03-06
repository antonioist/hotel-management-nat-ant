class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  belongs_to :hotel
  has_one_attached :photo
  has_many :bookings
  acts_as_favoritor
end
