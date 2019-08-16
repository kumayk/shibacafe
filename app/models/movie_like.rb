class MovieLike < ApplicationRecord
    belongs_to :user
    belongs_to :post_movie
end
