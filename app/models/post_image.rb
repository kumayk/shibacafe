class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image
	has_many :post_image_category_relations
    has_many :categories, through: :post_image_category_relations
    has_many :image_comments, dependent: :destroy
end
