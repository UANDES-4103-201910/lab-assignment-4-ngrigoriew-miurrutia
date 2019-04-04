class EventVenue < ApplicationRecord
	validates :name, presence: true, length: { minimum: 20 , message:"Name is shorter than 20"}
	validates :capacity , numericality: {greater_than: 0, message:"Capacity must to be greater than 0"}
end
