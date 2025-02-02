class LikesController < ApplicationController
    before_action :authenticate_user!
  def create
        @post_image = PostImage.find(params[:post_image_id])
        like = current_user.likes.new(post_image_id: @post_image.id)
        like.save
        @post_image.create_notification_by(current_user)
        # respond_to do |format|
        #   format.html {redirect_to request.referrer}
        #   format.js
        # end
        redirect_to post_image_path(@post_image)
  end
  def destroy
        post_image = PostImage.find(params[:post_image_id])
        like = current_user.likes.find_by(post_image_id: post_image.id)
        like.destroy
        redirect_to post_image_path(post_image)
  end
end
