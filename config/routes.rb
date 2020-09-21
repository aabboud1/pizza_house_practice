Rails.application.routes.draw do
  resources :pizza_toppings
  resources :restaurants
  resources :pizzas
  resources :toppings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
