class HomeController < ApplicationController
  before_action :authenticate_user!
  before_action :get_logged_user_tweets_count

  def index
    @tweets = Tweet.all.order(created_at: :desc).left_joins(:tweet_likes)
  end
end
