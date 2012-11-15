class HomeController < ApplicationController
	def stock
		
	end
	def results
		@stocks = params[:stocks]
	end
end