Rails.application.routes.draw do
  resources :items, only: [:index, :show, :create, :update, :destroy]
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
