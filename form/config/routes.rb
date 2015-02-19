Rails.application.routes.draw do
  resources :users
  resources :users, only: [:index, :new, :delete, :update]
  resources :projects do
    get "subscribe", on: :member
  end
  root "projects#index"
end
