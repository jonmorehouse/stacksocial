"
	Basic spec testing for our user model
	This model relies and interacts closely with twitter api
	Could have used fixtures / factory_girl_rails for the tests / factories -- possibly in the future as well we can

	Remember Factory.build == doesn't store!

	Tests:

		1.) Valid input / output of users being created etc with different parameters
		2.) Valid elements being stored etc
		3.) Concern testing working well -- possibly extend this base class
"
require 'spec_helper'
require 'user_helper'

describe User do

	# set up and initialize basic users etc
	describe "creation" do

		# test out vanilla user creation
		context "vanilla user creation" do

			# make sure we can build a valid user 
			it "has a valid factory" do
													
				FactoryGirl.build(:user).should be_valid

			end

			it "is invalid without a secret" do

				FactoryGirl.build(:user, :secret => nil).should_not be_valid

			end		

			it "is invalid without a key" do

				FactoryGirl.build(:user, :key => nil).should_not be_valid

			end

			it "is invalid without a uid" do

				FactoryGirl.build(:user, :key => nil).should_not be_valid	

			end

		end

		# create a user and test our omniauth creation method
		context "omniauth user creation" do

			before do

				@user = UserHelper.create_valid_user() 

			end

			before :each do

				@auth = OmniAuth.config.mock_auth[:twitter]

			end

			it "should successfully create twitter user" do

				user = User.omniauth_create @auth
				user.should be_valid

			end

			it "should successfully give us a twitter client object" do

				@user.twitter().class.should be == Twitter::Client

			end
		end
	end
end
