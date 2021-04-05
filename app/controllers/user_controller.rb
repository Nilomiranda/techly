class UserController < ApplicationController
  before_action :authenticate_user!

  def update_description
    user = current_user
    new_description = update_description_params[:description]
    if new_description and new_description.length > 0
      user.description = new_description
    else
      user.description = nil
    end

    if user.save
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def update_description_params
    params.permit(:description)
  end
end
