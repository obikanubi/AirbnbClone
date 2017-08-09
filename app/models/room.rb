class Room < ApplicationRecord
	belongs_to :user
	ratyrate_rateable 'room_rating'
	geocoded_by :address
	after_validation :geocode, if: :address_changed?

	validates :room_name, 
			  :address,
			  :description, 
			  :bedrooms, 
			  :beds,
			   presence: true
end
