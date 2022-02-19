class Place < ApplicationRecord
  has_many :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :website, presence: true
end
