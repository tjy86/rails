 class HomeController < ApplicationController
 	def start
 		
 	end
 	def boxes
 		@b = params[:box].to_i
 	end
 end