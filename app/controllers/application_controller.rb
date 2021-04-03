class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :show_params, if: :devise_controller?

  protected

  def show_params
    puts('params', params)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :description])
  end
end
