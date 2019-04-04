class TicketType < ApplicationRecord
  belongs_to :event
  belongs_to :ticket_zone

  validates :price , numericality: {greater_than: 0, message:"Price must to be greater than 0"}
end
