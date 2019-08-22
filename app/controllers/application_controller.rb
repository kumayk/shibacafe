class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, only: [:check]

	def check
		@notifications.where(check: false).each do |notification|
         notification.update_attributes(check: true)
        end
    end

	protected
    def configure_permitted_parameters
      added_attrs = [ :email, :name, :password, :password_confirmation ]
	  devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :phone_number])
	  devise_parameter_sanitizer.permit(:account_update,keys:[:name, :phone_number])
    end

end
