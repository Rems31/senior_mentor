class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :status, presence: true, inclusion: { in: ["pending", "accepted", "declined"] }
  validates :date, presence: true
end
