Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 resources :books
 resources :users, only: [:show, :index, :edit, :update]
 get 'home/about', to: 'homes#about', as: 'home_about'
 root to: 'homes#top'
end
