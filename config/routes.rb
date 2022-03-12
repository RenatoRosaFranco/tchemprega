# frozen_string_literal: true

Rails.application.routes.draw do

  # Administration
  # @implemented
  mount RailsAdmin::Engine => '/administrate', as: 'rails_admin'

  # Authenthication
  # @implemented
  devise_for :companies, {}
  devise_for :users, {}

  # Application
  # @implemented
  root to: 'home#index'
  
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

  # POST Routes
  post 'alert' => 'alerts#create'

  # GET Rotues

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

  # Dashboard
  # @implemented
  namespace :dashboard, constraint: { subdomain: 'dashboard' } do
    get '/' => 'home#index'
  end

  # API
  # @implemented
  namespace :api, constraint: { subdomain: 'api' } do

    # API => api.v1.tchemprega.com.br/
    # @implemented
    namespace :v1 do
      defaults format: :json do
        # some json from here
      end
    end

    # V1 => api.v2.tchemprega.com.br/
    # @implemented
    namespace :v2 do
      defaults format: :xml do
        # some xml from here
      end
    end
  end
end
