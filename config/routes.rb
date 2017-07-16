Rails.application.routes.draw do

  get 'accueil/contact'
  post 'accueil/demande_contact'
  
  get 'accueil/faq'
  get 'accueil/a_propos'

  devise_for :users
  root 'accueil#index'
  get 'accueil/index'

  get 'image/show'

  resources :evenements
  
  resources :users

end
