Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "welcome/index"
  root to: "welcome#index"

  resources :organisations
  resources :clients
  resources :contacts
  resources :platforms
  resources :positions
  resources :targets
  resources :ads

end
