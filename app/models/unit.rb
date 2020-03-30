class Unit < ApplicationRecord
  has_many :encounters

  validates :serial_no, presence: true, uniqueness: { scope: :operator }
  validates :operator, presence: true
  validates :country, presence: true
end
