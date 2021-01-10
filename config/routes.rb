Rails.application.routes.draw do
  resources :products
  devise_for :users
  devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', ass: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
