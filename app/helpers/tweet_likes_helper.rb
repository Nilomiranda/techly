module TweetLikesHelper
  def is_liked_by_me(tweet_likes)
    found_like = tweet_likes.detect { |tweet_like| tweet_like[:user_id] == current_user.id }
    found_like.present?
  end
end
