class TicketsController < ApplicationController
  def index
    @all_tickets = Ticket.all.order(:created_at).map { |ticket| ticket.name }
    @ticket = Ticket.new
    @last_winner = Ticket.where(winner: true).order(updated_at: :desc).first
    @winners = Ticket.where(winner: true).order(updated_at: :desc)
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash.notice = "Yay ! 🎉 Le ticket a bel et bien été créé."
      redirect_to root_path
    else
      flash.alert = "Mmmh 🤔 il semblerait que le nom n'ait pas été fourni.."
      redirect_to root_path
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