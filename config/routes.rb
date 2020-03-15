Rails.application.routes.draw do
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'admin/users#new'
  get '*unmatched_route' => redirect('/')

  namespace :admin do
    resources :users
  end
  root 'home#index'
  resources :posts
end
