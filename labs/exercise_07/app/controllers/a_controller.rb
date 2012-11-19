class AController < ApplicationController
	def quote
		
	end
	def results
		@ss = []
		stocks = params[:stocks].upcase
		i = params[:n].to_i
		i.times do |s|
			@ss << YahooFinance::get_quotes( YahooFinance::StandardQuote, stocks )[stocks].lastTrade
			sleep 5
		end
	end
end