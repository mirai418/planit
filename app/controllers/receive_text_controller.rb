class ReceiveTextController < ApplicationController
  def index
    message_body = params["Body"]
    from_number = params["From"]

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is a message for #{from_number}. I got your message even tho im a bot"
    )
  end
end
