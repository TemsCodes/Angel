class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  before_action :check_user, only: [:home]

  def check_user
    redirect_to places_path if current_user
  end

  def home
  end

  def profile
    @bookings = Booking.where(user: current_user)
  end

  def review
  end

  def checkin
  end 

  def send_message
    account_sid = 'AC682bbb9971fe15d42d68e1e0be1afa6b' 
    auth_token = 'ee7d88166c341a4416335c80d81b6110' 
    @client = Twilio::REST::Client.new(account_sid, auth_token) 
     
    message = @client.messages.create( 
                                 body: 'Your angel will be with you shortly', 
                                 from: 'whatsapp:+14155238886',       
                                 to: 'whatsapp:+447931848516' 
                               ) 
  
  end

end
