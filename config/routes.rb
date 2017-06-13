Rails.application.routes.draw do

  devise_for :users
  root 'accueil#index'
  get 'accueil/index'

  get 'image/show'

  resources :evenements
  
  resources :users

end
