class Contact < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.contact_mail.subject
  #
  def contact_mail(name,email,phone,message)
    @greeting = "Hi"

    mail to: "bartekgladys@gmail.com"
  end
end
