class ApplicationController < ActionController::Base
	before_filter :authenticate_user!
	
	before_filter :configure_devise_params, if: :devise_controller?
		def configure_devise_params
			devise_parameter_sanitizer.for(:edit) do |u|
				u.permit(:display_name, :profile_picture, :email, :password, :password_confirmation)
			end
		end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
