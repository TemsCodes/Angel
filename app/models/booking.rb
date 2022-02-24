class Booking < ApplicationRecord
  belongs_to :place
  belongs_to :user
  has_many :reviews
  validates :date, presence: true
  validates :time, presence: true
end
