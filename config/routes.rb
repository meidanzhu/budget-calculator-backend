Rails.application.routes.draw do
  resources :expenses, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
