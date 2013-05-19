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
  # include our basic mongoid elemental structure
  include Mongoid::Document
  # include our twitter concern etc
  include Twitter


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

    # class method
    def self.test

      # uid = "HELLO WORLD I AM JON"
      puts "HELLO WORLD FROM CLASS!"

    end

    # object method!
    def test

      self.uid = "JON MOREHOUSE"

      # save

    end


end
