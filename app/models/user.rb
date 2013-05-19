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
    field :name, type: String
    field :description, type: String
    field :profile_url, type: String

  	# 
  	has_many :tweets

    ######## CLASS METHODS #############
    # class method
    def self.user(id)

      # return a user based on the id input

    end


    ############## OBJECT METHODS ############################
    # constructor method for this particular element
    def initialize(params)

      puts "HELLO WORLD"
      # attempt to save the proper parameters
      begin

        # initialize various parameter pieces into the actual model
        # this is subject to change as the oauth elements change from twitter's omniauth implementation
        self.uid = params.uid
        self.key = params.credentials.token
        self.secret = params.credentials.secret

      # handle a bad login (improper elements with the proper message return)
      rescue NoMethodError

        # call our error function etc
        self.error "Invalid signup"

      # if all parameters are passed validly, we can go ahead and create our profile and save the document!
      else

        # save our profile and update the actual element etc
        self.profile()
      end
    end





end
