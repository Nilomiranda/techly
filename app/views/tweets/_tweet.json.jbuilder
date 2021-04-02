json.extract! tweet, :id, :content, :belongs_to, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
