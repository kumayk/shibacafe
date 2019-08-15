class PostImageCategoryRelation < ApplicationRecord
	belongs_to :post_image
    belongs_to :category
end
