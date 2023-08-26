Rails.application.routes.draw do
  resources :side_options
  resources :specials
  get 'hours_location', to: 'info#hours_location'
  resources :events
  root 'home#index'
  get 'home/index'
  resources :sub_menus
  resources :menu_meals
  resources :meals
  resources :menus
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
