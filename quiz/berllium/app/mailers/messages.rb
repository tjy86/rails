class Messages < ActionMailer::Base
  default from: "thomasjyang@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messages.msg.subject
  #
  def msg(email, m)
    @greeting = "Hi"
    @m = m
    mail to: email, :subject => "new message"
  end
end
