class ClassCode < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :type, presence: true
	validates :power, presence: true
end
