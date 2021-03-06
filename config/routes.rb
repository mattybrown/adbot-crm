Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "welcome/index"
  root to: "welcome#index"

  resources :organisations
  resources :clients do
    resources :contacts
  end
  resources :platforms
  resources :positions
  resources :targets
  resources :ads

end
