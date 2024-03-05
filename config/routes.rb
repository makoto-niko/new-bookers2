Rails.application.routes.draw do
  get 'groups/new'
  get 'groups/index'
  get 'groups/show'
  get 'groups/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to =>"homes#top"
  get 'home/about', to: 'homes#about'
  devise_for :users
  resources :books
  resources :users, only: [:index,:show,:edit,:update]
  resources :groups, only: [:new, :index, :show, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
