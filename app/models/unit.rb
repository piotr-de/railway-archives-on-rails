class Unit < ApplicationRecord
  belongs_to :class_code
  has_many :encounters

  validates :serial_no, presence: true
  validates :operator, presence: true
  validates :country, presence: true
end
