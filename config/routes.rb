Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  get "profile", to: 'pages#profile'
  get "confirmation", to: 'pages#confirmation'

end
