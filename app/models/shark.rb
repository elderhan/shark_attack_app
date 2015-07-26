class Shark < ActiveRecord::Base
	validates :name, :shark_species, :description, presence: true
	validates :weight, :age, numericality: {greater_than_or_equal_to: 0,
		only_integer: true }
	has_many :victims
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
