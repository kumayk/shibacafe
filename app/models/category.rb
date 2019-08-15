class Category < ApplicationRecord
	has_many :post_image_category_relations
    has_many :post_images, through: :post_image_category_relations
end
