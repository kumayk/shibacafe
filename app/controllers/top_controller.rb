class TopController < ApplicationController
  def index
  	  @post_images = PostImage.order(created_at: :desc).limit(5)
  	  @post_movies = PostMovie.order(created_at: :desc).limit(3)
  end
end
