class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
  end

  def review
  end

  def checkin
  end

  def confirmation
  end
end
