class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :check_user, only: [:home]

  def check_user
    redirect_to places_path if current_user
  end

  def home
  end

  def profile
  end

  def review
  end

  def checkin
  end

end
