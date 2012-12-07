class HomeController < ApplicationController
  def index

  end
  def stock
    symbol = params[:symbol].upcase
    Stock.create(:symbol => symbol)
  end
  def update

    quote_type = YahooFinance::StandardQuote
    quote_symbols = params[:symbol]
    symbol = YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].symbol
    trade = YahooFinance::get_quotes( quote_type, quote_symbols )[quote_symbols].lastTrade
    Stock.create(:symbol => symbol)

    render :json => Stock.all
  end
end