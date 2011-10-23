class PlacesController < ApplicationController
  def new
	@place = Place.new
  end
#i
  def create
	@place = Place.new(params[:place])
	if @place.save
		flash[:success] = "Success! You can add another place"
		redirect_to '/places/new'
	else
		flash[:error] = "Fail! Try again"
		render 'new'
	end
  end
end
