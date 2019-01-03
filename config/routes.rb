Rails.application.routes.draw do
  resources :picture_tags
  resources :users
  resources :tags
  resources :pictures
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
