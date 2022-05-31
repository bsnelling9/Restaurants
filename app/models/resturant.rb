class Resturant < ApplicationRecord
	mount_uploader :image, ImageUploader
	serialize :image, JSON # If you use SQLite, add this line
	has_many :food_items
	belongs_to :user, optional: true

	validates :name, :description, :location, :glutenfree, :vegan, presence: true
	validates :description, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed"}

	validates :title, length: {maximum: 140, too_long: "%{count} characters is the maximum allowed"}
end
