class PlacesController < ApplicationController
	
	def index
		@places=Place.all
	end 	

	def new
		@place=Place.new 
	end

	def create
		@place=Place.create(place_params)
		redirect_to root_path
	end

private

def place_params
	params.require(:place).permit(:name, :adress, :description)
end
end