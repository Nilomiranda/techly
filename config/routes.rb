Rails.application.routes.draw do
  resources :tweets
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  patch '/users/update_description', to: 'user#update_description'

  post '/tweets/:tweet_id/like', to: 'tweet_likes#toggle_likes', as: 'tweet_like'
end
