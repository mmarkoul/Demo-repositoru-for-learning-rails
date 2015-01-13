class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.message.subject
  #
  def delivermessage(mymessage)
    mail(:to =>'bikeincrete@gmail.com',
          :from =>mymessage.email,
         :subject => mymessage.subject,
         :body  =>(mymessage.body<< "\n\n" + mymessage.name + "\n\n"+ mymessage.email)
         )
  end
end
