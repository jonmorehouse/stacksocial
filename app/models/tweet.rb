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
						
		tweet_ids = twitter.user_timeline user

		# do a list comprehension for each of the tweets
		tweets = tweet_ids.map! do |tweet|

			Tweet.get_tweet tweet.id, twitter
		end

		return tweets
	end

	def self.get_tweet(tweet_id, twitter)

		# look in db first -- if it doesn't exist then go ahead and save the tweet and that will return a document id!
		begin

			tweet = Tweet.find_by(tweet_id: tweet_id)		

		# if document not found go ahead and create it in the db 
		rescue Mongoid::Errors::DocumentNotFound

			# first get the tweet from the server
			status = twitter.status tweet_id

			# now save the raw tweet field
			tweet = Tweet.save_tweet status, twitter

		end

		return tweet
	end

	def self.search(query, twitter)

		results = twitter.search query

		# for each tweet grab the proper data
		tweets = results.statuses.map do |tweet| 

			Tweet.get_tweet tweet.id, twitter

		end
	end

	# send a tweet on behalf of a user
	def self.tweet(params, twitter)

		tweet = twitter.update params[:message]

		self.save_tweet tweet, twitter

	end

	private

	def self.api_tweets(user_id)

		ids = twitter.user_timeline user_id

		twitter.oembeds(ids).each do |oembed|

			create! do |tweet|

				tweet.html = oembed.html
				tweet.twitter_id = raw_tweet.user.id	
				tweet.date_saved = Time.now
				tweet.tweet_id = raw_tweet.id

			end
		end
	end

	def self.db_tweets(user_id)

		# get from database where tweets have the user_id of the twitter id!
		return Tweet.where(twitter_id: user_id)		


	end

	# save a tweet using our elemebbbnts
	def self.save_tweet(raw_tweet, twitter)

		# get the oembed for a single tweet and save the element
		oembed = twitter.oembed raw_tweet.id

		create! do |tweet|

			tweet.html = oembed.html
			tweet.twitter_id = raw_tweet.user.id	
			tweet.date_saved = Time.now
			tweet.tweet_id = raw_tweet.id

		end
		
				

	end

end
