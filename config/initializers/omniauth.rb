# 
Rails.application.config.middleware.use OmniAuth::Builder do


  # initialize our twitter app ith the proper parameters etc
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']

  # initialize 
  OmniAuth.config.test_mode = true

  # configure twitter mock auths etc
  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({

  	:provider => 'twitter',
  	:uid => '12345'
  })

end