class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :destroy]

    def index
      @bookings = Booking.all
    end
  
    def create
      @booking = Booking.new(booking_params)
      raise
      @booking.user = current_user
      if @booking.save
        redirect_to profile_path
      else
        render :new
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
    end
  
  
    private
  
    def set_booking
      @booking = Booking.find(params[:id])
    end
  
    def booking_params
      params.require(:booking).permit(:user_id, :date, :place_id)
    end
  end
