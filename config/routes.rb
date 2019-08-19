Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :users, only: [:show, :edit, :update]
  resources :post_questions, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :answers, only: [:create, :update, :destroy]
  end
  resources :post_movies, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :movie_likes, only: [:create, :destroy]
    resource :movie_comments, only: [:create, :update, :destroy]
  end
  resources :post_images, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :likes, only: [:create, :destroy]
    resource :image_comments, only: [:create, :update, :destroy]
  end
  get 'category/:id/post_images' => 'categories#index'
end