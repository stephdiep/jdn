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

  def update
    @selected_ticket = Ticket.all.sample

    if @selected_ticket.update(winner: true)
      redirect_to root_path
    else
      flash.alert = "Il y a eu un pépin, veuillez réessayer."
    end
  end

  private
  def ticket_params
    params.require(:ticket).permit(:name)
  end
end
