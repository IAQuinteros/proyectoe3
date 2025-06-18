Rails.application.routes.draw do
  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Devise authentication
  devise_for :users

  # Users resources
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    member do
      get 'edit' # Ruta adicional para edición
      get 'publications/by_user', to: 'publications#by_user', as: :publications_by_user
    end

    # Nested resources
    resources :publications, only: [:index, :show]
    resources :followers, only: [:index, :show, :destroy]
    resources :likes, only: [:index, :show]
    resources :comments, only: [:index, :show]
  end

  # Publications resources
  resources :publications do 
    resources :likes, only: [:index, :show, :create, :destroy]
    resources :comments, only: [:index, :show, :create, :destroy]
    resources :hashtags, only: [:index, :show]
  end

  # Standalone resources
  resources :likes, only: [:index, :show, :new, :create, :destroy]
  resources :followers, only: [:index, :show, :new, :create, :destroy]
  resources :hashtags, only: [:index, :show]
  resources :comments, only: [:index, :show, :new, :create, :destroy]

  # Root path
  root "users#index"
end
