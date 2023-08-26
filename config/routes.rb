Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :sub_menus
  resources :menu_meals
  resources :meals
  resources :menus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
