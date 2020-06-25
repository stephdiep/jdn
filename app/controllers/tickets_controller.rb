class TicketsController < ApplicationController
  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      flash.notice = "Ticket created!"
      redirect_to root_path
    else
      flash.alert = "Something went wrong, please try again."
      redirect_to root_path
    end
  end

  def destroy
    all_tickets = Ticket.all.map { |ticket| ticket.name }
    @selected_ticket = all_tickets.delete_at(rand(all_tickets.length))

    @selected_ticket.delete_at(@selected_ticket)
  end

  private
  def ticket_params
    params.require(:ticket).permit(:name)
  end
end
