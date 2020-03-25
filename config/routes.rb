Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show]
    resources :workers, only: [:index]
  end
  resources :room_categories, only: [:index, :show]
  resources :amenities, only: [:index]
  resources :menu_items, only: [:index]
  resources :clients, only: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
