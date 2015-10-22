Rails.application.routes.draw do
  resources :users
  resources :users
  root to: "users#index"
end