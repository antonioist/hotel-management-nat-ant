Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show, :new, :create]
    get 'tabs', to: 'users#tabs', as: :tabs
    resources :workers, only: [:index, :new, :create]
    resources :clients, only: [:show, :new, :create]
    resources :bookings, only: [:show, :new, :create]
  end
  resources :workers, only: [:edit, :update, :destroy]
  resources :room_categories, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :amenities, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :menu_items, only: [:index, :new, :create, :update, :edit, :destroy]
  resources :rooms, only: [:edit, :update, :destroy]
  resources :clients, only: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end

  get 'dashboard', to: 'users#dashboard', as: :dashboard
  get 'show_map/:id', to: 'hotels#show_map', as: :show_map
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
