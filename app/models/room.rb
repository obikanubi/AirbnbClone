class Room < ApplicationRecord
	belongs_to :user
	ratyrate_rateable 'cleanliness', 
					  'location', 
					  'host', 
					  'design'
	validates :room_name, 
			  :description, 
			  :bedrooms, 
			  :beds,
			   presence: true
end
