class Place < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :website, presence: true
end
