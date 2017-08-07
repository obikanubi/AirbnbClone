class Room < ApplicationRecord
	belongs_to :user
	validates :room_name, 
			  :description, 
			  :bedrooms, 
			  :beds,
			   presence: true
end
