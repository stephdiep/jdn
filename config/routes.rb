Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :tickets, only: [ :index, :create ]
  get '/ticket', to: 'tickets#update'

  resources :cashes, only: :create
  get '/finances', to: 'cashes#index'
  get '/funds', to: 'cashes#funds'
end
