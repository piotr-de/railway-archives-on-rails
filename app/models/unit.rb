class Unit < ApplicationRecord
  has_many :encounters

  validates :name, presence: true
  validates :serial_no, presence: true, uniqueness: { scope: :operator }
  validates :operator, presence: true
  validates :country, presence: true
  validates :category, presence: true
  validates :propulsion, presence: true
end
