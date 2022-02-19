Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :places do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: [:index, :show, :destroy]
  get "profile", action: :show, controller: "users"
end
