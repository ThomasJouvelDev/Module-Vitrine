class ContactMailer < ApplicationMailer

  def general_message(contact)
    @contact = contact
    mail( :to => "contact@thomasjouveldev.fr", :subject => "Vous avez un message de votre Site")
  end

  def produit_message(contact, produit)
    @article = produit
    @contact = contact
    mail( :to => "contact@thomasjouveldev.fr", :subject => "Demande d'information sur #{produit.nom}")
  end

end
