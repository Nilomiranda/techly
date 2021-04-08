class TweetLikesController < ApplicationController
  before_action :authenticate_user!

  def toggle_likes
    tweet_id = params[:tweet_id]
    current_user_id = current_user[:id]

    existing_like = TweetLike.where('user_id = :user_id and tweet_id = :tweet_id', { user_id: current_user_id, tweet_id: tweet_id }).first

    if existing_like.present?
      TweetLike.destroy(existing_like[:id])
    else
      TweetLike.create(user_id: current_user_id, tweet_id: tweet_id)
    end

    redirect_back(fallback_location: root_path)
  end
end
