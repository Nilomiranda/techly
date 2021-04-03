class UserController < ApplicationController
  before_action :authenticate_user!

  def update_description
    user = current_user
    user.description = update_description_params[:description]
    user.save
    redirect_to '/'
  end

  private

  def update_description_params
    params.permit(:description)
  end
end
