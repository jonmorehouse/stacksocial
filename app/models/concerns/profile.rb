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

	  	# include many tweets 
	  	has_many :tweets
	end

end