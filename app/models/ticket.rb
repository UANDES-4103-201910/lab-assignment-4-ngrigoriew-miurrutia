class Ticket < ApplicationRecord
  belongs_to :ticket_type
  belongs_to :order

  before_validation :ticket_date

  def ticket_date
  	t= TicketType.find(self.ticket_type_id)
  	e= Event.find(t.id)
  	edate=e.start_date
  	if edate < Date.today
    	errors.add(:ticket_date, "Must be after the start date")

    end
 end

 def ticket_bought
 	o= Order.find(self.order_id)
 	t1=TicketType.find(self.ticket_type_id)
  	e= Event.find(t.id)
  	edate=e.start_date
  	if edate < o[:created_at]
    	errors.add(:ticket_bought, "Must be after the start date")

    end
end
