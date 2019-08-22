Rails.application.routes.draw do
 #resources 'shared/beaches'

  devise_for :users

  resources :beaches, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :update, :show, :destroy]

  root to: 'beaches#index'
  get 'dashboard', to: 'pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
