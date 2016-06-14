class PlacesController < ApplicationController
  
  def index
    @places = Place.all #Display all entries in the Place model, and store it in @places.
  end


end
