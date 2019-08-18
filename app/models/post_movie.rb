class PostMovie < ApplicationRecord
	mount_uploader :video, VideoUploader
	validates :title, :caption, :video, :presence => true
	belongs_to :user
	has_many :movie_comments, dependent: :destroy
	has_many :movie_likes, dependent: :destroy
        def movie_liked_by?(user)
          movie_likes.where(user_id: user.id).exists?
        end
end
