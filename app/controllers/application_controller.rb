class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def get_logged_user_tweets_count
    if current_user[:id].present?
      @logged_user_tweets_count = Tweet.where(user_id: current_user.id).count
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :description])
  end
end
