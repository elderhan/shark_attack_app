class Shark < ActiveRecord::Base
	validates :name, :shark_species, :description, presence: true
	validates :weight, :age, numericality: {greater_than_or_equal_to: 0,
		only_integer: true }
	has_many :victims
end
