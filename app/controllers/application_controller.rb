class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, only: [:count]

	def count
		@image_comment = ImageComment.where(check: false)
		@movie_comment = MovieComment.where(check: false)
		@like = Like.where(check: false)
		@movie_like = MovieLike.where(check: false)
		@answer = Answer.where(check: false)
		
	end

	protected
    def configure_permitted_parameters
      added_attrs = [ :email, :name, :password, :password_confirmation ]
	  devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :phone_number])
	  devise_parameter_sanitizer.permit(:account_update,keys:[:name, :phone_number])
    end

end
