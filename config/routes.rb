Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :tickets
  resource :search, only: :show do
    post :show
  end

  namespace :admin do
    resources :trains do
      resources :carriages, shallow: true
    end
    resources :railway_stations do
      patch :update_position, on: :member
    end
    resources :routes
    resources :tickets
    get 'resources/index'
  end

  root to: 'searches#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
