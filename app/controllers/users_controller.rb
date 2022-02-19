class UsersController < ApplicationController

  def show
    @bookings = current_user.bookings
    @places = current_user.places
  end
end
