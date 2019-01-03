Rails.application.routes.draw do
  resources :sessions
  resources :picture_tags
  resources :users
  resources :tags
  resources :pictures
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/signup", to: "users#new", as: "signup"
  get "/sessions/new", to: "sessions#new"
  post "/sessions", to: "sessions#create"
end
