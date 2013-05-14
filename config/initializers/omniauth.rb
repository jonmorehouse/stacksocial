Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV['TWITTER_KEY'], ENV['SECRET']

  
end