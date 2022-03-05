class Place < ApplicationRecord
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :website, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
