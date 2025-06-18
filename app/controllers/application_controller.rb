class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :authenticate_user!, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?


    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :sex, :user_image,:password,:password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:email,:username,:user_image,:password,:password_confirmation,:current_password])
  end

  def after_update_path_for(resource)
    edit_user_registration_path
  end
end

