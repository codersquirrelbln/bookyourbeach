Rails.application.routes.draw do
  resources :beaches
  
  devise_for :users
   resources :beaches, only: [:index, :show] do
     resources :bookings
  end
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
