# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products
  namespace :admin do
    resources :users
    resources :roles, only: %i[index show]
    resources :users, except: [:new]

    root to: 'users#index'
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  # Defines the root path route ("/")
  # root "articles#index"
end
