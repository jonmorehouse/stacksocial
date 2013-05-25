source 'https://rubygems.org'

gem 'rails', '3.2.13'

# initialize some global gems etc
gem 'mongoid'
gem 'figaro'
gem 'omniauth'
# 
gem 'omniauth-twitter'
# twitter gem is used to create valid oauth elements etc
gem 'twitter'
gem 'mysql'

# Gems used only for assets and not required
# in production environments by default.
group :assets do

	gem 'haml'
	gem 'jbuilder'
	# gruntfile dependencies go in here but in reality can just use system elements
	# we're going to deploy static assets to heroku etc
	gem 'sass'
	# initialize basic compass element
	gem 'compass'
	# include compass version of twitter bootstrap etc
	gem 'compass_twitter_bootstrap'
	# intiaillize my custom compass colors
	gem 'compass-colors', :github => 'MorehouseJ09/compass-colors'

	gem 'animate-sass', :github => 'MorehouseJ09/animate.sass'

	gem 'sassy-buttons'

	gem 'susy'
	gem 'stitch'

end

# intialize some testing gems etc
group :development, :test do

	gem 'debugger'
	gem 'guard'
	gem 'guard-rspec'
	gem 'rspec-rails'
	gem 'faker'
	gem 'factory_girl_rails'
	gem 'database_cleaner'
end
