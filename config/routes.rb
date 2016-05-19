Rails.application.routes.draw do
  resources :bands, :games, :cards

  get '/start', to: 'cards#new'
  root 'bands#index'
end
