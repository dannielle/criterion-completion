class MoviesController < ApplicationController
	def new
	end

	def create
		@movie = Movie.new(movie_params)
		@movie.save
		redirect_to @movie
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def index
		@movies = Movie.all
	end

	private

	def movie_params
		params.require(:movie).permit(:title, :year, :director, :genre, :description)
	end
end
