class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :post_image_category_relations
    has_many :categories, through: :post_image_category_relations
    has_many :image_comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :notifications,dependent: :destroy

    def liked_by?(user)
        likes.where(user_id: user.id).exists?
    end

    def create_notification_by(user)
        notification = user.active_notifications.new(
          post_image_id: self.id,
          visited_id: self.user.id,
          action: "like"
        )
        notification.save if notification.valid?
    end
    def create_notifications_by(user)
        notification = user.active_notifications.new(
          post_image_id: self.id,
          visited_id: self.user.id,
          action: "image_comment"
        )
        notification.save if notification.valid?
    end
end
