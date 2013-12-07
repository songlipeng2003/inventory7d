Inventory7d::Application.routes.draw do
  root "home#index"

  resources :warehouses
end
