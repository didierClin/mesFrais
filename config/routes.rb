Rails.application.routes.draw do

  devise_for :users
  # Page d'accueil de l'app
  root 'pages#index'
end
