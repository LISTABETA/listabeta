class ApplicationController < ActionController::Base
  include Pundit

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :avatar,
                                                       :avatar_cache])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])

    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name, :avatar,
                                                              :avatar_cache, :password])
  end
end
