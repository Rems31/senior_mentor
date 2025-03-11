class Payment < ApplicationRecord
  belongs_to :booking

  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, presence: true, inclusion: { in: ["pending", "completed", "failed"] }
end
