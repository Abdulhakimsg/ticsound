class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u|
      u.permit(:username, :email, :password,
               :password_confirmation, :remember_me, :avatar, :remove_avatar)
    }
    devise_parameter_sanitizer.permit(:account_update) { |u|
      u.permit(:username, :email, :password,
               :password_confirmation, :current_password, :avatar, :remove_avatar)
    }
  end

  def after_sign_in_path_for(resource)
    request.env["omniauth.origin"] || stored_location_for(resource) || user_path(id: current_user.id)
  end
end
