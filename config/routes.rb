Rails.application.routes.draw do
  root 'top#index'
  resources :post_questions, only: [:new, :index, :show, :edit] do
    resources :answers, only: [:create, :update, :destroy]
  end
  resources :post_movies, only: [:new, :index, :show, :edit] do
    resources :movie_comments, only: [:create, :update, :destroy]
  end
  resources :post_images, only: [:new, :index, :show, :edit] do
    resources :image_comments, only: [:create, :update, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
