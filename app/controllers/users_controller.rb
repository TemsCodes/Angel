class UsersController < ApplicationController

  def show
    @bookings = current_user.bookings
    @places = current_user.places
  end

  def new
   @user = User.new
  end

  def create
   @user = User.new(user_params)
   @user.save
  end


  private

  def user_params
    params.require(:user).permit(:name, :last_name, :email, :phone_number)
  end
