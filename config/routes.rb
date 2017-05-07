Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  devise_for :admins
  devise_for :users

  resource :cart, only: [:show]

  resources :categories

  resources :order_items, only: [:create, :update, :destroy]

  #get 'orders/index'
  resources :orders

  resources :platforms

  get 'products/shop'
  resources :products

  resources :shippings

  get 'users/:id/edit_address', to: 'users#edit_address', as: 'users_edit_address'
  resources :users

end