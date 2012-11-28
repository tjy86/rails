class TwilioController < ApplicationController
  def new
  end
  def create
    from_phone = "+19177468813"
    to_phone = params[:phone]
    txt = params[:text_message]
    client = Twilio::REST::Client.new(TW_SID, TW_TOK)
    @message = client.account.sms.messages.create({:from => from_phone, :to => to_phone, :body => txt})
    redirect_to twilio_path
  end
end