class Recipe < ActiveRecord::Base
	
	validates :name, presence: true, length: {minimum: 2}
	validates :category, presence: true, length: {minimum: 3}
	validates :ingredients, presence: true, length: {minimum: 10}
	validates :steps, presence: true, length: {minimum: 10}
	validates :cook_time, presence: true, numericality: {greater_than: 0, less_than: 450}


	mount_uploader :picture, PictureUploader

	def minutes_total
		if (prep_time)
			prep_time + cook_time
		else
			cook_time
		end
	end

	belongs_to :user

end

