Rails.application.routes.draw do
  resources :providers, only [:index, :show, :create, :update, :destroy]
end
