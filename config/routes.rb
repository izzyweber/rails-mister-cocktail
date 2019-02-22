Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :ingredients, only: [:index, :new, :create]
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
