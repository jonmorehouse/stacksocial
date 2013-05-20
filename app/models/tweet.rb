"
	This is the basic class for storing tweets etc
	When we initialize a user, we need to grab the tweet for each of the users etc
	We need to have a class method to grab the tweet, if it doesn't exist then this class is responsible for getting the tweet and saving it etc		

	search api = http://rdoc.info/gems/twitter/Twitter/API/Search
	tweet api = http://rdoc.info/gems/twitter/Twitter/API/Tweets


"
class Tweet
	include Mongoid::Document

	# include our twitter base element
	include Concerns::TwitterBase

	# set up our basic tweet object / document etc
	field :html, type: String
	field :twitter_id, type: String
	field :date_saved, type: DateTime
	field :tweet_id, type: String

	validates_presence_of [:html, :twitter_id, :date_saved, :tweet_id]

	######## CLASS METHODS ##########
	def self.get_user_tweets(user, twitter)
						
		"
			Get all user tweets here
			Check db for these tweets and if not

		"

	end

	def self.get_tweet(tweet_id, twitter)

		# look in db first -- if it doesn't exist then go ahead and save the tweet and that will return a document id!

	end

	def self.search(params, twitter)

		"
			Search twitter api functionality here
		"
		twitter.search params, options

	end

	# send a tweet on behalf of a user
	def self.tweet(params, twitter)

		twitter.update params[:message] 

	end

	private

	def self.api_tweets

		# ids = twitter.user_timeline user_id

		# oembeds = twitter.oembeds ids

	end

	def self.db_tweets

		# get from database where tweets have the user_id of the twitter id!

	end


	# save a tweet using our elements
	def self.save_tweet(tweet)

		# get the oembed for a single tweet and save the element


	end

	def self.save_tweets(tweets)



	end


end
