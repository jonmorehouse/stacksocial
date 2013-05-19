# 
Rails.application.config.middleware.use OmniAuth::Builder do


  # initialize our twitter app ith the proper parameters etc
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']

end