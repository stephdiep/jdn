class PagesController < ApplicationController
  def home
    @available_tickets = Ticket.all
    @ticket = Ticket.new
  end
end
