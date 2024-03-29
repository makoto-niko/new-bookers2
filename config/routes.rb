Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root :to =>"homes#top"
  get 'home/about', to: 'homes#about'
  devise_for :users
  resources :books do
    resource :favorite, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update]
  resources :groups, only: [:new, :index, :show, :create, :edit, :update] do
   resource :group_users, only: [:create, :destroy]  
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
