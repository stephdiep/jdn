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

    if @total_cred == nil
      @balance = - @total_deb
    elsif @total_deb == nil
      @balance = @total_cred
    else
      @balance = @total_cred - @total_deb
    end
  end

  def create
    @fund = Cash.new(value: params[:cash][:value].to_f, description: params[:cash][:description], category: 'credit', fund_2122: true)

    if @fund.save
      redirect_to funds_path
    else
      flash.alert = "Mmmh 🤔 il semblerait que le nom n'ait pas été fourni.."
      redirect_to funds_path
    end
  end

  def funds
    @funds = Cash.where(fund_2122: true).order(value: :desc)

    @total_funds = 0.00
    @funds.each do |fund|
      @total_funds += fund.value
    end

    @fund = Cash.new
  end
end
