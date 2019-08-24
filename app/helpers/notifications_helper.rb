module NotificationsHelper
	def unchecked_notifications
      @notifications = current_user.passive_notifications.where(checked: false)
    end
	def notification_form(notification)
	  @comment = nil
	  visiter = link_to notification.visiter.name, user_path(notification.visiter.id)
	  your_post_image = link_to 'あなたの投稿', notification.post_image
	  your_post_movie = link_to 'あなたの投稿', notification.post_movie
	  your_post_question = link_to 'あなたの質問', notification.post_question
	  case notification.action
	    when "follow" then
	      "#{visiter}があなたをフォローしました"
	    when "like" then
	      "#{visiter}さんが#{your_post_image}にいいね！しました"
	    when "movie_like" then
	      "#{visiter}さんが#{your_post_movie}にいいね！しました"
	    when "answer" then
	      @answer = Answer.find_by(id:notification.answer_id)&.content
	      "#{visiter}さんが#{your_post_question}に回答しました"
	    when "image_comment" then
          @image_comment = ImageComment.find_by(id:notification.image_comment_id)&.content
          "#{visiter}さんが#{your_post_image}にコメントしました"
	    when "movie_comment" then
	      @movie_comment = MovieComment.find_by(id:notification.movie_comment_id)&.content
          "#{visiter}さんが#{your_post_movie}にコメントしました"
	  end
	end
end
