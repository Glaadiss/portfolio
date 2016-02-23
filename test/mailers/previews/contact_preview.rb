# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact/contact_mail
  def contact_mail
    Contact.contact_mail
  end

end
