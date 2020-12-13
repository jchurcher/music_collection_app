# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact_email
    ContactMailer.contact_email("John Smith", "JohnSmith@email.com", "01234567890", "Example email message")
  end

end
