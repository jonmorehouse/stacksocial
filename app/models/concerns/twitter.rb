module Twitter
	extend ActiveSupport::Concern

	included do

	  	# initialize our basic credentials etc
	  	field :uid, type: String
	  	field :key, type: String
	  	field :secret, type: String

	end

	# initialize instance methods for a single twitter element
	module InstanceMethods

	  	# set up our our twitter client for use
	  	def client

	  		# create the users twitter client and return it! as a new object
	  		return Twitter::Client.new(

	  			:consumer_key => ENV['TWITTER_KEY'],
	  			:consumer_secret => ENV['TWITTER_SECRET'],
	  			:oauth_token => self.key,
	  			:oauth_secret => self.secret,
	  		)

	  	end


	end

	# initialize twitter class methods etc
	module ClassMethods


	end

end