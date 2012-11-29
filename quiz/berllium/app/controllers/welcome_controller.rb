class WelcomeController < ApplicationController
  def index

  end
  def s
    email = params[:email]
    phone = params[:phone]
    message = params[:message]
    if email.present?
      Messages.msg(email,message).deliver
    elsif phone.present?
      account_sid = ENV['TW_SID']
      auth_token = ENV['TW_TOK']
      client = Twilio::REST::Client.new account_sid, auth_token

      from = "+19177468813" # Your Twilio number

      client.account.sms.messages.create(
          :from => from,
          :to => phone,
          :body => message
        )
    end
  end
end