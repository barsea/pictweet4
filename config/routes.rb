Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  # get 'tweets', to: 'tweets#index'
  # resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
  resources :tweets
end
