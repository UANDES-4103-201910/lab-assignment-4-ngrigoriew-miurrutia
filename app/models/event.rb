class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types

  validate :start_date_available
  validate :same_date
  

  def start_date_available
    if start_date < Date.today
    	errors.add(:start_date, "Must be after the start date")
    end
    if start_date == Date.today
    	errors.add(:start_date, "Must be after the start date")
    end
 end

 def same_date
 	for i in Event.all do
 		if i.event_venue == event_venue
 			if i.start_date == start_date
 				errors.add(:start_date, " Start date and Event Venue match with other event")
 			end
 		end
 	end
 end
end
