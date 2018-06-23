class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact

    mail to: "own e-mail address", subject: "confirmation e-mail of inquiry"
  end
end
