class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all.order(created_at: :desc)
    @logged_user_tweets_count = Tweet.where(user_id: current_user.id).count
  end
end
