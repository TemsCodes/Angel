class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @query = params[:query]
      @places = Place.where("name LIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @places = Place.all
    end
  end

  # def new
  #   @place = Place.new
  # end

  # def create
  #   @place = Place.new(place_params)
  #   if @place.save
  #     redirect_to places_path
  #   else
  #     render :new
  #   end
  # end

  # def show
  #   @booking = Booking.new
  # end
  def show
    @place = Place.new
  end
  # def edit
  # end

  # def update
  #   @place.update(place_params)
  #   redirect_to place_path(@place)
  # end

  # def destroy
  #   @place.destroy
  #   redirect_to places_path
  # end

  private

  def set_place
    @place = Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :address, :description, :website, :map_url, :phone_number)
  end
end
