class UsersController < Devise::SessionsController

	private
	def user_params
		      params.require(:user).permit(:name,:organization_ids)
	end
end