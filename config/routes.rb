Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users


resources :books, only: [:new, :create, :index, :show, :edit, :update]
resources :users, only: [:edit, :show, :index, :update]
get 'homes/about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
