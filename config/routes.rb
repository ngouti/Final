Rails.application.routes.draw do
  resources :sessions
  resources :picture_tags
  resources :users
  resources :tags
  resources :pictures
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/signup", to: "users#new", as: "signup"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"
  # post '/comments', to: 'comments#create'
end
