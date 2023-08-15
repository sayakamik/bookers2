Rails.application.routes.draw do
  get 'homes/top' => 'homes#top'
  get 'home/about' => 'homes#about'
  root to: "homes#top"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books
  resources :users, only: [:show, :edit, :index]
end
