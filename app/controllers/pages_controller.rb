class PagesController < ApplicationController
  def home
    @all_tickets = Ticket.all.map { |ticket| ticket.name }
    @ticket = Ticket.new

    # @selected_name = @all_tickets.delete_at(rand(@all_tickets.length))
  end
end
