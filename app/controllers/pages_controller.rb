class PagesController < ApplicationController
  def home
    @all_tickets = Ticket.all.map { |ticket| ticket.name }
    @ticket = Ticket.new

    # @selected_name = @
    @winners = []
    @winners.push(@selected_name)
  end
end
