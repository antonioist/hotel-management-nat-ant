Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  resources :hotels, only: [:index, :show] do
    resources :rooms, only: [:index, :show, :new, :edit, :update]
    get 'index_edit', to: 'rooms#index_edit', as: :index_edit
    get 'tabs', to: 'users#tabs', as: :tabs
    resources :workers, only: [:index]
    resources :rooms, only: [:index, :show]
    resources :clients, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  resources :room_categories, only: [:index, :show]
  resources :amenities, only: [:index]
  resources :menu_items, only: [:index]
  resources :clients, only: [:new, :create] do
    resources :bookings, only: [:new, :create]
  end

  get 'dashboard', to: 'users#dashboard', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
