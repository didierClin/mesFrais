Rails.application.routes.draw do

  resources :registres
  devise_for :users
  # Page d'accueil de l'app
  root 'pages#index'
end
