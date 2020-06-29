Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tickets, only: [:create]
  get '/ticket', to: 'tickets#update'
end
