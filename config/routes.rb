Rails.application.routes.draw do
 #resources 'shared/beaches'
<<<<<<< HEAD
 # get 'beaches/index'
 # get 'beaches/show'
 # devise_for :users
#   resources :beaches #do
#     resources :bookings
#   end
# resources :beaches
=======
  # get 'beaches/index'
  # get 'beaches/show'
  # devise_for :users
  #  resources :beaches #do
#     resources :bookings
#   end
  # resources :beaches
>>>>>>> 252c5721bb5335f927b1dfbd61366fd85f3e2282

  devise_for :users

  resources :beaches, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :update, :show, :destroy]

  root to: 'beaches#index'
  get 'dashboard', to: 'pages#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
