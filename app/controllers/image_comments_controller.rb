class ImageCommentsController < ApplicationController
    before_action :authenticate_user!
	def create
        @post_image = PostImage.find(params[:post_image_id])
        comment = current_user.image_comments.new(image_comment_params)
        comment.post_image_id = @post_image.id
        comment.save
        @post_image.create_notifications_by(current_user)
        # respond_to do |format|
        # format.html {redirect_to request.referrer}
        # format.js
        # end
        redirect_to post_image_path(@post_image)
    end

    def destroy
        image_comment = ImageComment.find(params[:id])
        if image_comment.destroy
          redirect_to post_image_path(id: image_comment.post_image_id)
        end
    end

    private
    def image_comment_params
        params.require(:image_comment).permit(:comment)
    end
end
