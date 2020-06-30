class CashesController < ApplicationController
  def index
    @credits = Cash.where(category: "credit")
    @total_cred = 0.00
    @credits.each do |credit|
      @total_cred += credit.value
    end

    @debits = Cash.where(category: 'debit')
    @total_deb = 0.00
    @debits.each do |debit|
      @total_deb += debit.value
    end
  end

  def create
    @fund = Cash.new
    # Need to code this
    # description = params
    # category = credit by default
    # fund_2122 = true by default
    if @cash.save(cash_params)
      flash.notice = "Oui"
      redirect_to funds_path
    else
      flash.alert = "Non"
      redirect_to funds_path
    end
  end

  def funds
    @funds = Cash.where(fund_2122: true)

    @total_funds = 0.00
    @funds.each do |fund|
      @total_funds += fund.value
    end

    @fund = Cash.new
  end

  private
  def cash_params
    params.require(:cash).permit(:value, :category, :fund_2122, :description)
  end
end
