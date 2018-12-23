class RegistrationsController <Devise::RegistrationsController
	#before_action :authenticate_admin!, :redirect_unless_admin

	private
	def redirect_unless_admin
	  unless current_admin       
	    redirect_to new_admin_session_path
	  end
	end

	private

	def sign_up_params
		params.require(:admin).permit(:username, :phone, :role, :avatar, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:admin).permit(:username, :phone, :role, :avatar, :email, :password, :password_confirmation)
	end
		
	end