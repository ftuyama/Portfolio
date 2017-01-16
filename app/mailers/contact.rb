class Contact < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.email_me.subject
  #
  def email_me(name, email, message)
    @greeting = "Hi, I'm #{name}"
    @message = message
    @email = email

    mail to: "felipe.tuyama@redealumni.com", subject: "Porfolio email from #{name}"
  end
end
