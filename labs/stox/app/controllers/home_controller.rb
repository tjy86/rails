class HomeController < ApplicationController
	def index

	end
	def result
	
		@s = params[:symbol].upcase
		n = params[:number].to_i
	 	@quotes = n.times.map{sleep 1; YahooFinance::get_quotes(YahooFinance::StandardQuote, @s)[@s].lastTrade}
    @avg = @quotes.inject(&:+) / n
    @quotes.each do |x|
    	Stock.create(:symbol => @s, :price => x.to_f)
    end

	end
	def portfolio
		stocks = Stock.select(:symbol).uniq
		symbols = stocks.map{|stock| stock.symbol}
		@output = {}
		symbols.each do |symbol|
			@output[symbol] = Stock.where(:symbol => symbol)
		end

	end
end