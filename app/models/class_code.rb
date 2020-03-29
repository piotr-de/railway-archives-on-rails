class ClassCode < ApplicationRecord
	has_many :units

	validates :name, presence: true, uniqueness: true
	validates :category, presence: true
	validates :power, presence: true
end
