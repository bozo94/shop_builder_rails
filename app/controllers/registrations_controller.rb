# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :html, :js

  def update_avatar
  	current_user.avatar = params[:event][:avatar]
  	if current_user.save
  		redirect_to edit_user_registration_path
  	else
  		redirect_to edit_user_registration_path
  	end
  end

  private

  # Notice the name of the method
  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
