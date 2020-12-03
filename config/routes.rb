Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  scope "(:locale)", locale: /fr|en/ do
    get '/:locale' => 'pages#home'
    root to: 'pages#home'
    get 'mentionslegales', to: 'pages#mentionslegales', as: 'mentionslegales'
    get 'services', to: 'pages#services', as: 'services'
    get 'showroom', to: 'pages#showroom', as: 'showroom'
    get 'contact', to: 'contacts#new', as: 'contacts'
    post 'contact', to: 'contacts#create', as: 'contacts_new'
    get 'categorie', to: 'pages#categorie', as: 'categorie'
    get 'categorie/velo', to: 'pages#velo', as: 'velo'
    get 'categorie/chaussure', to: 'pages#chaussure', as: 'chaussure'
    get 'categorie/mobilier', to: 'pages#mobilier', as: 'mobilier'
    get 'categorie/mobilier/commode', to: 'pages#commode', as: 'commode'
    get 'categorie/mobilier/table', to: 'pages#table', as: 'table'
    get 'categorie/mobilier/bureau', to: 'pages#bureau', as: 'bureau'
    get 'categorie/mobilier/siege', to: 'pages#siege', as: 'siege'
    get 'categorie/poupee', to: 'pages#poupee', as: 'poupee'
    get 'categorie/miroir', to: 'pages#miroir', as: 'miroir'
    get 'categorie/jouet', to: 'pages#jouet', as: 'jouet'
    get 'categorie/deco', to: 'pages#deco', as: 'deco'
    get ':id', to: 'contacts#new_produit', as: 'contactsproduit'
    post ':id', to: 'contacts#create_produit', as: 'contactsproduit_new'
  end
end
