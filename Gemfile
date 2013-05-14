source 'https://rubygems.org'

gem 'rails', '3.2.13'

# initialize some global gems etc
gem 'mongoid'
gem 'figaro'
gem 'omniauth'



# Gems used only for assets and not required
# in production environments by default.
group :assets do

	gem 'haml'
	gem 'jbuilder'
	# gruntfile dependencies go in here but in reality can just use system elements
	# we're going to deploy static assets to heroku etc

end

# intialize some testing gems etc
group :development, :assets do


	gem 'debugger'
	gem 'guard'
	gem 'guard-rspec'
	gem 'rspec-rails'

end
