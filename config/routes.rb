Rails.application.routes.draw do
  get "hashtags/index"
  get "hashtags/show"
  get "comments/index"
  get "comments/show"
  get "likes/index"
  get "likes/show"
  get "followers/index"
  get "followers/show"
  get "publications/index"
  get "publications/show"
  get "users/index"
  get "users/show"
  get 'users/:id/publications/by_user', to: 'publications#by_user', as: :publications_by_user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  root "users#index"

  resources :users do 
    resources :publications, only: [:index, :show]
    resources :followers, only: [:index, :show, :destroy]
    resources :likes, only: [:index, :show]
    resources :comments, only: [:index, :show]
  end
  resources :publications do 
    resources :likes, only: [:index, :show]
    resources :comments, only: [:index, :show]
    resources :hashtags, only: [:index, :show]
  end

  resources :likes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :followers, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :hashtags, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :comments, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  


end
