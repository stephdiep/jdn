class TicketsController < ApplicationController
  def index
    tickets_arr = Ticket.all.where(winner: false).order(:name).map { |ticket| ticket.name }
    @tickets_hash = Hash.new(0)

    tickets_arr.each { |value| @tickets_hash[value] += 1 }

    @ticket = Ticket.new
    @last_winner = Ticket.where(winner: true).order(updated_at: :desc).first
    @winners = Ticket.where(winner: true).order(updated_at: :desc).reject do |ticket|
      ticket == Ticket.where(winner: true).order(updated_at: :desc).first
    end
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to tickets_path
    else
      flash.alert = "Mmmh 🤔 il semblerait que le nom n'ait pas été fourni.."
      redirect_to tickets_path
    end
  end

  def update
    @selected_ticket = Ticket.all.where(winner: false).sample

    if @selected_ticket.update(winner: true)
      redirect_to tickets_path
    else
      flash.alert = "Il y a eu un pépin, veuillez réessayer."
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:name)
  end
end

# Ticket.all.each { |ticket| ticket.update(winner: false) }