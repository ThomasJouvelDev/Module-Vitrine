class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    @url = contacts_new_path
  end

  def create
    @contact = Contact.new(contact_params)
    @url = contacts_new_path
    if verify_recaptcha(model: @contact) && @contact.save
      ContactMailer.general_message(@contact).deliver_now
      redirect_to contacts_path, alert: t('merci_message')
    else
      render :new
    end    
  end

  def new_produit
    @article = Article.find(params[:id])
    @contact = Contact.new
    @url = contactsproduit_new_path
    @fade = '<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="false">'.html_safe
    @articles = Article.where(category_id: @article.category_id, vendu: false, reserve: false).order(Arel.sql('RANDOM()')).take(4)    
  end

  def create_produit
    @article = Article.find(params[:id])
    @contact = Contact.new(contact_params)
    @url = contactsproduit_new_path
    @articles = Article.where(category_id: @article.category_id, vendu: false, reserve: false).order(Arel.sql('RANDOM()')).take(4)
    if verify_recaptcha(model: @contact) && @contact.save
      ContactMailer.produit_message(@contact, @article).deliver_now
      redirect_to contactsproduit_path, alert: t('merci_message')
    else
      @backdrop = '<div class="modal-backdrop in"></div>'.html_safe
      @fade = '<div class="modal in" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="false" style="display:block;">'.html_safe
      render :new_produit
    end    
  end

private

  def contact_params
    params.require(:contact).permit(:email, :message, :name, :tel)
  end

end
