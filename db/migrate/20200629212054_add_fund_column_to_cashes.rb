class AddFundColumnToCashes < ActiveRecord::Migration[6.0]
  def change
    add_column :cashes, :fund_2122, :boolean, default: false
    add_column :cashes, :description, :string
  end
end
