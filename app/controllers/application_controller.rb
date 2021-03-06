class ApplicationController < ActionController::Base
  before_action :set_locale

  def default_url_options
    { host: ENV["HOST"] || "http://www.module-vitrine.com/" }
    { locale: I18n.locale }
  end
  
    private
    # Make sure your production HOST variable is set with your domain name. If you deploy your code with Heroku for instance, just type in your terminal heroku config:set HOST=www.my_product.com
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end 
end
