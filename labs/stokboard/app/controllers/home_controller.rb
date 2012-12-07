class HomeController < ApplicationController
  def index

  end
  def stock
    symbol = params[:symbol].upcase
    Stock.create(:symbol => symbol)

    render :json => nil
  end
  def update
    quote_type = YahooFinance::StandardQuote
    stocks = Stock.all
    stocks.each do |s|
      trade = YahooFinance::get_quotes( quote_type, s.symbol )[s.symbol].lastTrade
      a = Price.new(:num => trade.to_f)
      a.stock = s
      a.save
    end
    z = {}
    z[:stocks] = Stock.all
    z[:prices] = Price.all
    render :json => z
  end
  def graph
    stocks = Stock.uniq
    prices = {}

    stocks.each do |x|

      prices[x.symbol] = x.prices
    end

    render :json => prices
  end
end