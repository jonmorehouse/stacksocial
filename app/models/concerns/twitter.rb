"
	Initialize our basic twitter concerns for this particular application
	Initialize attributes as well as various helper functions for working with twitter

	client = return currently scope twitter client		
	error = throw error to the controller for later use
	validate = validate current twitter information

	One other note, InstanceMethods and ClassMethods modules are deprecated now, we can write these methods as vanilla methods

	Current required keys = [

		uid = twitter user id,
		key = twitter access key,
		secret = twitter secret key
	]
"
module Concerns::Twitter
	extend ActiveSupport::Concern

	included do

	  	# required fields for twitter implementation 
	  	field :uid, type: String
	  	field :key, type: String
	  	field :secret, type: String

	  	# require that the above fields exist
	  	validates_presence_of :uid, :key, :secret

	end

	################ INSTANCE METHODS #####################

  	# set up our our twitter client for use
  	def twitter

  		# create the users twitter client and return it! as a new object
  		return Twitter::Client.new(

  			:oauth_token => self.key,
  			:oauth_token_secret => self.secret,
  		)

  	end

  	# initialize twitter inititializer methods
  	# this segment could change pending the twitter auth params and keys in the future
  	def twitter_init(params)

  		# save twitter params here etc
  		begin 	

        self.uid = params.with_indifferent_access["uid"]
  			self.key = params.with_indifferent_access["credentials"].with_indifferent_access["token"]
  			self.secret = params.with_indifferent_access["credentials"].with_indifferent_access["secret"]

  		# attempt to catch the errors that exist
  		rescue # NoMethodError

  			"
  				We had an error here that we need to throw a proper failure etc and control properly
  			"
  			raise StandardError, "Invalid Oauth Params"	

  		# if we have the correct credentials for our various methods etc, lets go ahead and try to run the client element and initialize our twitter functionality
  		else

        twitter()

  		end

  	end

  	# set up a basic error handler
  	def error(message = nil)
  		
  		"
  			Throw error here so that we can catch within our controller elements
  		"
  		
  		return {

  			:status => false,
  			# :message => message if message else "Invalid Twitter action"

  		}

  	end

	################ CLASS METHODS #####################

end