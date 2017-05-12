Rails.application.routes.draw do
  post 'comments/create/:post_id' => "comments#create"
  get 'comments/new'
  get 'comments/destroy'

  resources :likes
  devise_for :users
  root "posts#index"
  resources :posts

  get 'likes/toggle/:post_id' => "likes#toggle"
  get 'likes/create/:post_id' => "likes#create"
  get 'likes/destroy/:like_id' => "likes#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
