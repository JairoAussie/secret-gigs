Rails.application.routes.draw do
  root to: "gigs#index"
  get '/my_gigs', to: 'gigs#my_gigs', as: 'my_gigs'
  get '/my_tickets', to: 'bookings#index', as: 'my_tickets'
  resources :gigs do
    resources :bookings, only: [:new, :create]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
