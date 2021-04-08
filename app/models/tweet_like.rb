class TweetLike < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates_presence_of :user_id, :tweet_id
end
