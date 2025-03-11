class Offer < ApplicationRecord
  has_many :bookings
  belongs_to :user

  validates :name, presence: true
  validates :offer_type, presence: true, inclusion: { in: ["Bakery", "Gardening", "Manual activities", "Cooking", "Culture"] }
  validates :description, presence: true, length: { minimum: 4 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :area, presence: true
end
