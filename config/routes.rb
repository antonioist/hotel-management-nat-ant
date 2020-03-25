Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hotels, only: [:index, :show] do
    resources :workers, only: [:index]
    resources :rooms, only: [:index, :show]
    resources :clients, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  resources :room_categories, only: [:index, :show]
  resources :amenities, only: [:index]
  resources :menu_items, only: [:index]

end
