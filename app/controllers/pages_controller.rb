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
    account_sid = ACCOUNT_SID
    auth_token = AUTH_TOKEN
    @client = Twilio::REST::Client.new(account_sid, auth_token) 
     
    message = @client.messages.create( 
                                 body: 'Your angel will be with you shortly', 
                                 from: 'whatsapp:+14155238886',       
                                 to: 'whatsapp:+447931848516' 
                               ) 
  
  end

def send_call
  account_sid = ACCOUNT_SID
  auth_token = AUTH_TOKEN
  
  # set up a client to talk to the Twilio REST API
  @client = Twilio::REST::Client.new(account_sid, auth_token)
  
  call = @client.calls.create(
      to: "+447931848516",
      from: "+15017122661",
      url: "http://demo.twilio.com/docs/voice.xml")
  puts call.to
end 
end
