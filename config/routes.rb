Rails.application.routes.draw do
  resources :users_events, only: [:index, :create, :destroy]
  resources :events, only: [:index, :show]
  resources :users [:show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
