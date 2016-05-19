Rails.application.routes.draw do
  resources :bands, :games, :cards

  get '/start', to: 'cards#new', as: 'start'
  root 'bands#index'
end
