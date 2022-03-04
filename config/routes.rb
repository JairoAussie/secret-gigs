Rails.application.routes.draw do
  root to: "gigs#index"
  get '/my_gigs', to: 'gigs#my_gigs', as: 'my_gigs'
  resources :gigs do
    resources :bookings, only: [:index, :new, :create]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
