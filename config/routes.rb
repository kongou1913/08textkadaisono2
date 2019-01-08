Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  resources :users
  resources :topics

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'topics/index'
  post '/topics', to: 'topics#create'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  delete '/favorites',  to: 'favorites#destroy'

  get 'p_comments/index'
  post '/p_comments', to: 'p_comments#create'
end
