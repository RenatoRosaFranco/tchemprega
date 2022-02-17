# frozen_string_literal: true

Rails.application.routes.draw do

  # Administration
  # @implemented
  mount RailsAdmin::Engine => '/dashboard', as: 'rails_admin'

  # Authenthication
  # @implemented
  devise_for :companies, {}

  # Application
  # @implemented
  root to: 'jobs#index'
  
  # Companies
  # @implemented
  resources :companies, only: [:index, :show] do

    # On collection
    # @implemented  
    collection do

      # Search
      # @implemented
      match 'search' => 'companies#search', via: [:get, :post], as: :search
    end
  end

  # Jobs
  # @implemented
  resources :jobs do

    # On member
    # @implemented
    member do
      post 'expire' => 'jobs#expire'
      post 'active' => 'jobs#active'
    end

    # On collection
    # @implemented
    collection do
      get 'company'   => 'jobs#company'
      get 'expirated' => 'jobs#expirated'
      
      # Filters
      # @implemented
      get 'daily'     => 'jobs#daily'
      get 'weekly'    => 'jobs#weekly'
      get 'monthly'   => 'jobs#monthly'
      get 'yearly'    => 'jobs#yearly'

      # Search
      # @implemented
      match 'search'  => 'jobs#search', via: [:get, :post], as: :search
    end
  end
end
