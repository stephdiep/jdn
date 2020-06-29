class AddWinnerToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :winner, :boolean, default: false
  end
end
