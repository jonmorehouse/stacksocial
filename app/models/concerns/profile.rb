"
	Initialize all basic functionality for the twitter profile elements
	Initialize all fields and require that we are using the twitter elements etc
"
module Concerns::Profile

	extend ActiveSupport::Concern

	included do

	  	# now store our basic elements that we want to have accessible via our api	
	  	# this will be a list of all the follower's were currently working with!
	  	# these are all pointers to 
	  	field :followers, type: Array
	  	field :friends, type: Array
	    field :name, type: String
	    field :description, type: String
	    field :profile_image_url, type: String
	    field :twitter_id, type: String

	  	# include many tweets 
	  	has_many :tweets
	end

	def get_profile
			
		twitter = twitter()

		begin

			# get the current user
			user = twitter.user
			# now cache the fields we want etc
			self.name = user.name
			# cache the user profile image
			self.profile_image_url = user.profile_image_url
			# cache our description
			self.description = user.description
			# now update tweets
			self.twitter_id = user.id

			# call a class method which will get the tweets for a user!
			save

		rescue Twitter::Error => error
			
			puts error.message

		end

	end
end