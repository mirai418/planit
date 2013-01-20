class ReceiveTextController < ApplicationController
  def index
    message_body = params["Body"]
    from_number = "+16145319177"
    twilio_sid = 'AP5a61788d64ebe4536d754e03d06c5b2b'
    twilio_token = 'bea098b5b4df9701137f87a953c3eea7'
    twilio_phone_number = '6143471726'
    

    User.create(:name => "TWILIO THING", :event_id => 3)
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => from_number,
      :body => "This is a message for #{from_number}. I got your message even tho im a bot"
    )
  end
end
