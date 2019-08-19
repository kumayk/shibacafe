class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :post_images, dependent: :destroy
  has_many :post_movies, dependent: :destroy
  has_many :post_queations, dependent: :destroy
  has_many :image_comments, dependent: :destroy
  has_many :movie_comments, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :movie_likes, dependent: :destroy
end
