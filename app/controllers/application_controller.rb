class ApplicationController < ActionController::Base
  before_action :set_locale, :find_cats

  def default_url_options
    { host: ENV["HOST"] || "localhost:3000" }
    { locale: I18n.locale }
  end
  
    private

  def find_cats
    @cats = []
    @cats << Category.find_by(key:'velo')
    @cats << Category.find_by(key:'chaussure')
    @cats << Category.find_by(key:'mobilier')
    @cats << Category.find_by(key:'poupee')
    @cats << Category.find_by(key:'miroir')
    @cats << Category.find_by(key:'jouet')
    @cats << Category.find_by(key:'deco')
  end
  # Make sure your production HOST variable is set with your domain name. If you deploy your code with Heroku for instance, just type in your terminal heroku config:set HOST=www.my_product.com
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
