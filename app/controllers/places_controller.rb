class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  
  def index
    #@places = Place.all #Display all entries in the Place model, and store it in @places.
    @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @place = Place.new
  end

  def create
    current_user.places.create(place_params)
    redirect_to root_path
  end

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

  def show
    @place = Place.find(params[:id])
  end

  def edit
    @place = Place.find(params[:id])

    if @place.user != current_user
      return render text: 'You can only edit places you\'ve created', status: :forbidden
    end
  end

  def update
    @place = Place.find(params[:id])
    @place.update_attributes(place_params)
    redirect_to place_path(@place)

    if @place.user != current_user
      return render text: 'You can only edit places you\'ve created', status: :forbidden
    end

  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to root_path
  end


end
