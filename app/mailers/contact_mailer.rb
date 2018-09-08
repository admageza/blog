class ContactMailer < ApplicationMailer
  def contact_mail(emailu)
    @contact = contact

    mail to: contact.email, subject: "This is confirmation e-mail of your inquiry"
  end
  
  
   def contact_mail2(emailu)

    mail to: emailu, subject: "confirmation  of new article"
   end
  
end
