class PagesController < ApplicationController
  def home
    @all_tickets = Ticket.all.map { |ticket| ticket.name }
    @ticket = Ticket.new
    @last_winner = Ticket.where(winner: true).order(updated_at: :desc).first
    @winners = Ticket.where(winner: true)
  end
end
