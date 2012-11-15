class HomeController < ApplicationController
	def go
		
	end
	def search
		@movs = []
		movies = params[:name]
		mov = movies.split(', ')
		mov.each do |m|
			n = m.gsub(/\s/,'+')
			url = "http://www.omdbapi.com/?t=#{n}"
			a = HTTParty.get(url)
			@movs << JSON(a)
		end
	end
end