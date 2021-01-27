Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :brackets, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :songbrackets, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # get '/songs/:id', to: 'songs#index'
  # patch '/songs/:id', to: 'songs#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
