class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def new
	end
	def create
		movie_name = params[:name]
		movie_poster = params[:poster]
		Movie.create(:name => movie_name, :poster => movie_poster)
		redirect_to movies_path
	end
	def destroy
		movie = Movie.find(params[:id])
		movie.delete
		redirect_to movies_path
	end
end