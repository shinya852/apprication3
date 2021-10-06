Rails.application.routes.draw do
devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :users
  resources :books do
  resource :favorites, only: [:create, :destroy]#いいね
  resources :book_comments, only: [:create, :destroy]#コメント
end
end