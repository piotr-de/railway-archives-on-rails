class Encounter < ApplicationRecord
  belongs_to :unit

  validates :description, presence: true
  validates :date, presence: true
  validates :image_url, presence: true, uniqueness: true
end
