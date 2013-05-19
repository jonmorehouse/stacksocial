"
	This is the basic twitter user etc
	We will have concerns / functions that are responsible for updating the elements and then actually grabbing pieces from out twitter code base	
	We will expect that the initialize element will have at least something like this:

		[uid, credentials: {key, secret}]				

	We're going to store the following information

		[profile name, 
			key, secret, uid
			description, 
			profile pic, 
			followers,
			following,
			tweets,
		]
"
class User
  include Mongoid::Document

  	# initialize our basic credentials etc
  	field :uid, type: String
  	field :key, type: String
  	field :secret, type: String

  	# now store our basic elements that we want to have accessible via our api	
  	# this will be a list of all the follower's were currently working with!
  	# these are all pointers to 
  	field :followers, type: Array
  	field :following, type: Array

  	# 
  	has_many :tweets
  	# can model these all up later
  	# has_many :followers
  	# has_many :following

  	# set up our our twitter client for use
  	def client

  		# create the users twitter client and return it! as a new object
  		return Twitter::Client.new(

  			:consumer_key => ENV['TWITTER_KEY'],
  			:consumer_secret => ENV['TWITTER_SECRET'],
  			:oauth_token => key,
  			:oauth_secret => secret,
  		)

  	end

 	def initialize(params) 

 		# make sure we have the proper parameters here!
 			

 	end
end
