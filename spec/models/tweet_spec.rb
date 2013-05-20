require 'spec_helper'
require 'user_helper'

describe Tweet do

	# initialize our basic user
	before do

		@user = UserHelper.create_valid_user()
		@twitter = @user.twitter()
		@sampleTweet = FactoryGirl.build :tweet

	end

	describe "creation" do


	end

	describe "tweet on behalf of a user" do

		pending "Should be able to pass in a twitter object and tweet parameters to tweet on behalf of a user"

	end

	describe "get a user's tweets" do

		pending "Should be able to get all tweets for a particular user. Pass in a user id as well as twitter object"

	end

	describe "search for tweets" do

		pending "should be able to search twitter for tweets"

	end

	describe "get a single tweet" do

		pending "should be able to get a single oembed for a tweet"

	end

end
