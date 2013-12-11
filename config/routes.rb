Inventory7d::Application.routes.draw do
  root "home#index"

  resources :warehouses

  resources :products

  resources :records
end
