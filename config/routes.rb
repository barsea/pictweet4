Rails.application.routes.draw do
  root to: 'tweets#index'
  # get 'tweets', to: 'tweets#index'
  resources :tweets, only: [:index, :new, :create, :destroy]
end
