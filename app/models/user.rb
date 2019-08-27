class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :post_images, dependent: :destroy
  has_many :post_movies, dependent: :destroy
  has_many :post_questions, dependent: :destroy
  has_many :image_comments, dependent: :destroy
  has_many :movie_comments, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :movie_likes, dependent: :destroy
  has_many :active_notifications, class_name: "Notification", foreign_key: "visiter_id", dependent: :destroy
  has_many :passive_notifications, class_name: "Notification", foreign_key: "visited_id", dependent: :destroy
  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower
  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following
  has_many :notifications,dependent: :destroy

  # ユーザーに未確認の通知があるか確認
  def uncheck_notifications?
    self.passive_notifications.where(check: false).exists?
  end

  # 今自分(引数のuser)がフォローしようとしているユーザー(レシーバー)がフォローされているユーザー(つまりpassive)の中から、引数に渡されたユーザー(自分)がいるかどうかを調べる
  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end

  def create_notification_by(user)
    notification = user.active_notifications.new(
          follower_id: user.id,
          visited_id: self.id,
          action: "follow"
        )
    notification.save if notification.valid?
  end
end
