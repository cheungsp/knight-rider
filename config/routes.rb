Rails.application.routes.draw do
  resources :accidents
  resources :crimes
  resources :cameras
  resources :tickets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index', as: 'home'

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create] do
      delete :destroy, on: :collection
    end

  namespace :api, defaults: {format: :json} do
  namespace :v1 do
    resources :cameras
  end
end

end
