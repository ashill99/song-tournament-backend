Rails.application.routes.draw do
  resources :songs, only: [:index]
  resources :brackets
  resources :songbrackets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
