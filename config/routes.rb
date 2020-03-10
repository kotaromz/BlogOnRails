Rails.application.routes.draw do
  # get 'home/index'
  get  '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/signup', to: 'admin/users#new'

  namespace :admin do
    resources :users
  end
  root 'home#index'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
