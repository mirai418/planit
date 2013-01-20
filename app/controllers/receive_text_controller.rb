class ReceiveTextController < ApplicationController
  def index
    message_body = params["Body"]
    from_number = params["From"]

    twilio_sid = 'ACd6e2cd138e425cc622425573e6216494'
    twilio_token = '{{ 900a14db17298034ba0707d3dd7c48f5 }}'
    twilio_phone_number = '5005550006'
    

    User.create(:name => "TWILIO THING", :event_id => 3)
    #@twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    #@twilio_client.account.sms.messages.create(
      #:from => "+1#{twilio_phone_number}",
      #:to => from_number,
      #:body => "This is a message for #{from_number}. I got your message even tho im a bot"
    #)
  end
end
