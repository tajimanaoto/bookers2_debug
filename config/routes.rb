Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show, :edit, :update]
  get 'home/about' => 'homes#about'
  
end