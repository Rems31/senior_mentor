class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :status, presence: true, inclusion: { in: ["pending", "accepted", "rejected"] }
  validates :date, presence: true
  validate :date_cannot_be_in_the_past

  private

  def date_cannot_be_in_the_past
    errors.add(:date, "cannot be earlier than today.") if date.present? && date < Date.today
  end
end
