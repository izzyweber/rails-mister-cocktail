Rails.application.routes.draw do
  resources :cocktails do
    resources :ingredients, only: [:index, :new, :create]
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
