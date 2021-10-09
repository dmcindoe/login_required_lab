Rails.application.routes.draw do
  get "secrets", to: "secrets#show"

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  post "logout", to: "sessions#destroy"

  root to: "sessions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
