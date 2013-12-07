Inventory7d::Application.routes.draw do
  resources :products

  root "home#index"

  resources :warehouses
end
