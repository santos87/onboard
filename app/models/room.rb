class Room < ActiveRecord::Base

	# this is from the rubygeocoder.org site
	geocoded_by :address
	after_validation :geocode
	
	# validations
	validates :title, presence: true
	validates :address, presence: true
	validates :price, presence: true, numericality: { greaater_than_or_equal_to: 0.5 }



end
