class MovieLikesController < ApplicationController
  def create
        post_movie = PostMovie.find(params[:post_movie_id])
        movie_like = current_user.movie_likes.new(post_movie_id: post_movie.id)
        movie_like.save
          redirect_to post_movie_path(post_movie)
  end
  def destroy
        post_movie = PostMovie.find(params[:post_movie_id])
        movie_like = current_user.movie_likes.find_by(post_movie_id: post_movie.id)
        movie_like.destroy
          redirect_to post_movie_path(post_movie)
  end
end
