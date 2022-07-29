Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'landing#index'

  get '/auth/google_oauth2/callback', to: 'users#create'

  delete '/logout', to: 'sessions#destroy'

  # get '/buildings/index', to: 'buildings#index'
  resources :buildings, only: [:index, :show]
end
