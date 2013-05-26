require 'spec_helper'
require 'user_helper'


describe Api::UserController do

	before do

		@user = UserHelper.create_valid_user()
		session[:id] = @user.id
		@fakeUser = FactoryGirl.build :user


	end

	describe "Access Control" do	

		it "Should return a valid json response if I'm logged in properly" do	

			get :index
			# grab the data that was returned
			data = JSON.parse(response.body)

			# ensure that we our response has the proper keys
			data.values_at(:id, :uid, :twitter_id, :profile).should_not be_nil

		end

		it "Should return an error message when the user is invalid" do

			# generate a random character of lorems for the session
			session[:id] = Faker::Lorem.characters(25)

			get :index
			data = JSON.parse(response.body)
			data.with_indifferent_access["message"].should eql "Invalid Login."

		end
	end

	describe "Access User Profiles" do

		it "Should return a user profile if I'm logged in properly" do

			# initialize our request etc
			get :index
			data = JSON.parse response.body

			data["uid"].should == @user.uid
			data["twitter_id"].should == @user.twitter_id
			data["profile"]["name"].should == @user.profile.name 
			data["profile"]["description"].should == @user.profile.description

		end

		it "Should return an error message if I'm not logged in properly" do

			# get :show, :id => "HELL OWORLD"

			# ensure that our controller is getting the correct items
			# controller.params.should_not be_nil

		end
	end

end
