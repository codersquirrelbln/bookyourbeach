Rails.application.routes.draw do
 #resources 'shared/beaches'
 # get 'beaches/index'
 # get 'beaches/show'
 # devise_for :users
#   resources :beaches #do
#     resources :bookings
#   end
# resources :beaches

  devise_for :users
   resources :beaches, only: [:index, :show] do
     resources :bookings
  end
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # get 'show' to: 'beaches#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
