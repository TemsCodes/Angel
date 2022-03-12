class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy]

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    place = Place.find(params[:place_id])
    @booking.place = place
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :show
    end
  end

  def new
    @booking = Booking.new
  end

  def destroy
    @booking.destroy
    redirect_to experience_bookings_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :date, :place_id, :identification, :details, :question)
  end
end
