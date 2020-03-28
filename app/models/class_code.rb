class ClassCode < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :category, presence: true
	validates :power, presence: true
end
