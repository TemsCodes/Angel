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
  post "booking", to: 'booking#create'
  get "checkin", to: 'pages#checkin'
  post "send-message", to: 'pages#send_message'

end
