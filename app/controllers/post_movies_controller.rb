class PostMoviesController < ApplicationController
  def new
  	 @post_movie = PostMovie.new
  end

  def show
  	  @post_movie = PostMovie.find(params[:id])
  end

  def create
     @post_movie = PostMovie.new(post_movie_params)
     @post_movie.user_id = current_user.id
        if @post_movie.save
          redirect_to post_movie_path(@post_movie)
        else
          render :new
        end
  end

  def index
  end

  def edit
  	 @post_movie = PostMovie.find(params[:id])
  end

  def update
      post_movie = PostMovie.find(params[:id])
      post_movie.update(post_movie_params)
         redirect_to post_movie_path(post_movie)
  end

  def destroy
  	  @post_movie = PostMovie.find(params[:id])
      @post_movie.destroy
         redirect_to post_movies_path
  end

  private
  def post_movie_params
    params.require(:post_movie).permit(:title, :video, :caption)
  end

end
