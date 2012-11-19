require "yahoofinance"

class Main
	def self.run
		quote_type = YahooFinance::StandardQuote
		i=0
		a=[]
		while i < 5
			puts "please enter stock symbol"
			a << gets.chomp.upcase
			i += 1
		end
		puts `clear`
		while 1
			a.each do |x|
				y = YahooFinance::get_quotes( quote_type, a )[x].lastTrade
				puts "#{x}: #{y}"
				Stock.create(:symbol => x,:quote => y)
			end
			sleep 1
			puts `clear`
		end
	end
end