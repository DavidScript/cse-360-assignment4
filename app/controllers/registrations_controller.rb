class RegistrationsController < Devise::RegistrationsController

	private

	def account_update_params
		params.require(:user).permit(:display_name, :profile_picture, :email, :password, :password_confirmation, :current_password)
	end

end
