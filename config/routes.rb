Rails.application.routes.draw do
<<<<<<< HEAD
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to =>"homes#top"
  get 'home/about', to: 'homes#about'
  devise_for :users
  resources :books
  resources :users, only: [:index,:show,:edit,:update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
=======
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: "homes#top"
get 'home/about', to: 'homes#about'

resources :users, only: [:show, :edit, :index, :update]
resources :books

>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
end
