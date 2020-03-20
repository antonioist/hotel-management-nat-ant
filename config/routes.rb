Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hotels, only: [:index, :show] do
    resources :room_categories, only: [:index, :show] do
      resources :rooms, only: [:index, :show]
    end
  end
  resources :workers, only: [:index]
  resources :amenities, only: [:index]
  resources :menu_items, only: [:index]
  resources :bookings, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
