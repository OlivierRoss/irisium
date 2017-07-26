Rails.application.routes.draw do

  get 'contact', to: "accueil#contact"
  post 'accueil/demande_contact'
  
  get 'faq', to: "accueil#faq"
  get 'a_propos', to: "accueil#a_propos"
  
  get 'inscription', to: "accueil#inscription"

  get 'deconnexion', to: "accueil#deconnexion"

  devise_for :users
  root 'accueil#index'

  get 'index', to: "accueil#index"

  get 'image/show'

  resources :evenements
  
  resources :users

end
