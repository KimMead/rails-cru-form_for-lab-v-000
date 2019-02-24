class SongsController < ApplicationController

	def index
		@songs = Song.all
	end

	def show
		@song = Song.find(params[:id])
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.create(song_params)
	  redirect_to genre_path(@genre)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(genre_params)
	  redirect_to genre_path(@genre)
	end

	private

	def genre_params
		params.require(:genre).permit(:name)
	end
end
