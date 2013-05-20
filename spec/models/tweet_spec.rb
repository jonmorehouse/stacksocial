require 'spec_helper'
require 'user_helper'

describe Tweet do

	# initialize our basic user
	before do

		@user = UserHelper.create_valid_user()
		@twitter = @user.twitter()
		@sampleTweet = FactoryGirl.create(:tweet)

	end

	describe "creation" do

		it "has a valid factory" do

			FactoryGirl.build(:tweet).should be_valid
			FactoryGirl.build(:tweet, {:html => nil}).should_not be_valid
			FactoryGirl.build(:tweet, {:twitter_id => nil}).should_not be_valid
			FactoryGirl.build(:tweet, {:date_saved => nil}).should_not be_valid
			FactoryGirl.build(:tweet, {:tweet_id => nil}).should_not be_valid

		end

	end

	describe "on behalf of a user" do

		it "can send a tweet when passed a valid message and twitter object" do

			# tweet = Tweet.tweet({:message => Faker::Lorem.characters(139)}, @twitter)
			# tweet.should_not be_nil
		end

		it "should save a tweet after creation" do

			# tweet = Tweet.tweet({:message => Faker::Lorem.characters(120)}, @twitter)
			# Tweet.get_tweet(tweet.tweet_id, @twitter).should_not be_nil			

		end

		it "should throw an error when the tweet is too long" do

			begin	

				# tweet = Tweet.tweet({:message => Faker::Lorem.characters(150)}, @twitter)

			rescue Exception => error

				# error.should_not be_nil

			end

		end

	end

	describe "get a user's tweets" do

		it "should get a list of all a user's recent statuses" do

			# 
			tweets = Tweet.get_user_tweets(@user.twitter_id, @twitter).class.should == "Array"

		end
	end

	describe "search for tweets" do

		pending "should be able to search twitter for tweets"

	end

	describe "get a single tweet" do

		it "should return a tweet document when passed a tweet_id" do

			tweet = Tweet.get_tweet @sampleTweet.tweet_id, @twitter
			tweet.should_not be_nil
			tweet.twitter_id.should == @sampleTweet.twitter_id

		end

		it "should obtain tweet from Twitter api if its not saved already" do

			tweet = Tweet.get_tweet ENV['SAMPLE_TWEET_ID'], @twitter
			tweet.should_not be_nil
			tweet.html.should_not be_nil
			tweet.twitter_id.should_not be_nil
			tweet.tweet_id.should_not be_nil

		end


	end

end
