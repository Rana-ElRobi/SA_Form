Rails.application.routes.draw do
  resources :users
  root 'welcome#index'
  resources :users, only: [:index, :new, :delete, :update]
end
