class Answer < ApplicationRecord
   belongs_to :user
   belongs_to :post_question
   has_many :notifications,dependent: :destroy
end
