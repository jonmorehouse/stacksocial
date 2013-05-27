require 'spec_helper'
require 'user_helper'

describe Profile do

	before do

		@user = UserHelper.create_valid_user()
		@twitter = @user.twitter()

	end

	describe "creation" do

		it "has a valid factory" do

			FactoryGirl.build(:profile).should be_valid

		end

		it "can be successfully created with a valid user's twitter object" do

			profile = Profile.create_profile @twitter		

			profile.should be_valid
			profile.name.should_not be_nil
			profile.description.should_not be_nil
			profile.profile_image_url.should_not be_nil
			profile.twitter_id.should_not be_nil

		end
	end

	describe "friendship" do

		pending "friends / followers functionality is coming later"

	end

	describe "tweets" do

		pending "this holds an array of all tweets that this user has tweeted out"

	end

	describe "message" do

		pending "message this user from the currently logged in account if both elements are different"

	end


end
