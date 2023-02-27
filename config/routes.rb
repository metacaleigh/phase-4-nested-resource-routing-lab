Rails.application.routes.draw do
  # resources :users, only: [:show] do
  #   resources :items, only: [:index]
  # end
  # resources :users, only: [:show] do
  #   resources :items, only: [:show]
  # end
  # resources :items, only: [:create] do
  #   resources :users, only: [:show]
  # end

  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:show, :index, :create]
  end
end
