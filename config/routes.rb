Rails.application.routes.draw do
  root 'accueil#index'

  get 'accueil/index'
  
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
