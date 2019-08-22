class MovieCommentsController < ApplicationController
	def create
        @post_movie = PostMovie.find(params[:post_movie_id])
        comment = current_user.movie_comments.new(movie_comment_params)
        comment.post_movie_id = @post_movie.id
        comment.save
        @post_movie.create_notifications_by(current_user)
        # respond_to do |format|
        # format.html {redirect_to request.referrer}
        # format.js
        # end
        redirect_to post_movie_path(@post_movie)
    end

    def destroy
        movie_comment = MovieComment.find(params[:id])
        if movie_comment.destroy
          redirect_to post_movie_path(id: movie_comment.post_movie_id)
        end
    end

    private
    def movie_comment_params
        params.require(:movie_comment).permit(:comment)
    end
end
