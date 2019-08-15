class Like < ApplicationRecord
	belongs_to :user
    belongs_to :post_image
    belongs_to :post_movie
end
