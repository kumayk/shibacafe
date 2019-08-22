class Notification < ApplicationRecord
  default_scope->{order(created_at: :desc)}
  belongs_to :post_image, optional: true
  belongs_to :image_comment, optional: true
  belongs_to :post_movie, optional: true
  belongs_to :movie_comment, optional: true
  belongs_to :post_question, optional: true
  belongs_to :answer, optional: true


  # 通知送ってきた側のユーザーを取得
  def visiter
  	User.find_by(id: self.visiter_id)
  end
end