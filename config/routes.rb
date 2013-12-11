Inventory7d::Application.routes.draw do
  root "home#index"
  
  devise_for :users

  resources :warehouses

  resources :products

  resources :records
end
