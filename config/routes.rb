Rails.application.routes.draw do
  resources :appointments, only: [:index, :show, :create, :update, :destroy]
  resources :patients, only: [:index, :show, :create, :update, :destroy]
  resources :providers, only: [:index, :show, :create, :update, :destroy]
end
