class Restaurant < ApplicationRecord

	has_many :categories
	has_many :products
	has_many :links
	
	validates :name, presence: true
end
