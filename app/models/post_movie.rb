class PostMovie < ApplicationRecord
	mount_uploader :video, VideoUploader
	validates :title, :caption, :video, :presence => true
	belongs_to :user
	has_many :movie_comments, dependent: :destroy
	has_many :movie_likes, dependent: :destroy
	has_many :notifications,dependent: :destroy

    def movie_liked_by?(user)
        movie_likes.where(user_id: user.id).exists?
    end

    def create_notification_by(user)
  	    notification = user.active_notifications.new(
  	      post_movie_id:self.id,
  	      visited_id:self.user.id,
  	      action:"movie_like"
  	    )
  	    notification.save if notification.valid?
    end
    def create_notifications_by(user)
        notification = user.active_notifications.new(
          post_movie_id: self.id,
          visited_id: self.user.id,
          action: "movie_comment"
        )
        notification.save if notification.valid?
    end
end
