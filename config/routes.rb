Rails.application.routes.draw do
  resources :users_events, only: [:index, :create, :delete]
  resources :events, only: [:index, :show, :create, :delete]
  resources :users, only: [:show, :index, :create]

  post '/login' => 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
