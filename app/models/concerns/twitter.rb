"
	Initialize our basic twitter concerns for this particular application
	Initialize attributes as well as various helper functions for working with twitter

	client = return currently scope twitter client		
	error = throw error to the controller for later use
	validate = validate current twitter information

	Current required keys = [

		uid = twitter user id,
		key = twitter access key,
		secret = twitter secret key
	]
"
module Concerns::Twitter
	extend ActiveSupport::Concern

	included do

	  	# initialize 
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

	  	# initialize twitter inititializer methods
	  	def twitter_init(params)

	  		# save twitter params here etc
	  		begin 	

	  			self.uid = params.uid
	  			self.key = params.credentials.key
	  			self.secret = params.credentials.secret

	  		# attempt to catch the errors that exist
	  		rescue NoMethodError

	  			"
	  				We had an error here that we need to throw a proper failure etc and control properly
	  			"

	  		# if we have the correct credentials for our various methods etc, lets go ahead and try to run the client element and initialize our twitter functionality
	  		else

	  			client()

	  		end

	  	end

	  	# set up a basic error handler
	  	def error(message = nil)
	  		"
	  			Throw error here so that we can catch within our controller elements
	  		"
	  		
	  		return {

	  			:status => false,
	  			:message => message if message else "Invalid Twitter action"

	  		}

	  	end

	end

	# initialize twitter class methods etc
	module ClassMethods

		# class methods etc for global access

	end

end