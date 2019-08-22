class MovieComment < ApplicationRecord
	belongs_to :user
    belongs_to :post_movie
    has_many :notifications,dependent: :destroy
end
