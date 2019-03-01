Rails.application.routes.draw do
  root to: 'tickets#index'

  namespace :api do
    resources :tickets, only: :create
  end

  resources :tickets, only: [:index, :show]
end
