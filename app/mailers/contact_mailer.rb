class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: contact.email, subject: "confirmation e-mail of inquiry"
  end
  
  
   def contact_mail2(emailu)
   

    mail to: emailu, subject: "confirmation  of new article"
   end
end
