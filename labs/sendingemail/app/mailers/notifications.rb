class Notifications < ActionMailer::Base
  default from: "t@otyang.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"

    mail to: "thomasjyang@gmail.com", :subject => "Awesome subject for welcome"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.logoff.subject
  #
  def logoff
    @greeting = "Hi"

    mail to: "thomasjyang@gmail.com", :subject => "i noticed you logged of...Awesome subject"
  end
end
