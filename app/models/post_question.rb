class PostQuestion < ApplicationRecord
	belongs_to :user
	has_many :answers, dependent: :destroy
	has_many :notifications,dependent: :destroy

    def create_notification_by(user)
        notification = user.active_notifications.new(
          post_question_id: self.id,
          visited_id: self.user.id,
          action: "answer"
        )
        notification.save if notification.valid?
    end

end
