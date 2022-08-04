Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'

  get '/auth/google_oauth2/callback', to: 'users#create'

  get '/logout', to: 'sessions#destroy'

  get '/favorites', to: 'favorites#index'
  
  post '/favorites/new', to: 'favorites#create'

  resources :buildings, only: [:index, :show]
end
