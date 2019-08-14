Rails.application.routes.draw do
  root 'top#index'
  resources :post_questions, only: [:new, :create, :index, :show, :edit, :destroy] do
    resources :answers, only: [:create, :update, :destroy]
  end
  resources :post_movies, only: [:new, :create, :index, :show, :edit, :destroy] do
    resources :movie_comments, only: [:create, :update, :destroy]
  end
  resources :post_images, only: [:new, :create, :index, :show, :edit, :destroy] do
    resources :image_comments, only: [:create, :update, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
