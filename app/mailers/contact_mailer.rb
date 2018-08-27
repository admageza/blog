class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

<<<<<<< HEAD
    mail to: contact.email, subject: "confirmation e-mail of inquiry"
=======
    mail to: contact.email, subject: "This is confirmation e-mail of your inquiry"
  end
  
  
  def contact_mail2(emailu)
   

    mail to: emailu, subject: "confirmation  of new article"
>>>>>>> 001d4e9d9f529e02d44a0890b2bcfe735ade70e8
  end
  
  
   def contact_mail2(emailu)
   

    mail to: emailu, subject: "confirmation  of new article"
   end
end
