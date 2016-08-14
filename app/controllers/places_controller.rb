class PlacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]
	def index
		@places=Place.all
	end 	

	def new
		@place=Place.new 
	end

	def create
		current_user.places.create(post_params)		
		redirect_to root_path
	end

private

def place_params
	params.require(:place).permit(:name, :adress, :description)
end
end