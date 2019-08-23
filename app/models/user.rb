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

  # ユーザーに未確認の通知があるか確認
  def uncheck_notifications?
    self.passive_notifications.where(check: false).exists?
  end
end
