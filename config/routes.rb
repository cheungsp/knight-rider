Rails.application.routes.draw do
  resources :accidents
  resources :crimes
  resources :cameras
  resources :tickets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
