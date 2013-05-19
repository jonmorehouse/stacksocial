"
	Class responsibilities
	1.) Render tweets
	2.) Check for cached tweets that are embedded
	3.) Get oembed responses for tweets if they are already not cached
	4.) Save oembed responses
"
class Api::TweetController < Api::BaseController

	def show(params)
		# 

		# return a single tweet based on its id

	end


	private

	# return the cached tweet if it exists
	def get_tweet(id)

		# tweet = Tweet.where({:tweet_id => id})


	end

	# 
	def save_tweet(id)


	end


end
