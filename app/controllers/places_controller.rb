class PlacesController < ApplicationController
  
  def index
    #@places = Place.all #Display all entries in the Place model, and store it in @places.
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end


end
