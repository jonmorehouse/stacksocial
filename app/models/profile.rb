"
	Models are the basic class for users and interaction etc
	These live after the duration of our element


"
class Profile
  include Mongoid::Document

  	field :followers, type: Array
  	field :friends, type: Array
    field :name, type: String
    field :description, type: String
    field :profile_image_url, type: String
    field :twitter_id, type: String
    # has_many :tweets

    # validate the presence of an element
    validates_presence_of :name, :description, :profile_image_url, :twitter_id

 	# require that the profile is created with a twitter object being passed in! 
	def self.create_with_twitter(twitter)
			
		create! do |profile|

			# get the current user
			user = twitter.user
			# now cache the fields we want etc
			profile.name = user.name
			# cache the user profile image
			profile.profile_image_url = user.profile_image_url
			# cache our description
			profile.description = user.description
			# now update tweets
			profile.twitter_id = user.id
			# profile.tweets = Tweet.get_user_tweets(user.id, twitter).map {|tweet| tweet.tweet_id }

			# call a class method which will get the tweets for a user!
		end
	end

	def self.message(params, twitter)

		"
			message a user based on the params[:twitter_id] and params[:message]

		"


	end

end
