class Room < ApplicationRecord
	belongs_to :user
	ratyrate_rateable 'room_rating'

	validates :room_name, 
			  :description, 
			  :bedrooms, 
			  :beds,
			   presence: true
end
