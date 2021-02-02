Rails.application.routes.draw do
  resources :teams
  resources :players
  resources :users, only: [:index, :create, :update, :destroy, :show]
  resources :players, only: [:index, :create, :update, :destroy, :show]
  resources :teams, only: [:index, :create, :update, :destroy, :show]
  resources :user_bids, only: [:index, :create, :update, :destroy, :show]
  resources :notes, only: [:index, :create, :update, :destroy, :show]
  resources :bids, only: [:index, :create, :update, :destroy, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
