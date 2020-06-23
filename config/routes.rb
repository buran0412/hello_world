Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/new'
  get '/', to: 'pages#index'

  get '/user/new', to:'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
