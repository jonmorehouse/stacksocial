"
	Basic spec testing for our user model
	This model relies and interacts closely with twitter api
	Could have used fixtures / factory_girl_rails for the tests / factories -- possibly in the future as well we can

	Tests:

		1.) Valid input / output of users being created etc with different parameters
		2.) Valid elements being stored etc
		3.) Concern testing working well -- possibly extend this base class
"
require 'spec_helper'

describe User do

	before :each do

		# @valid_user = FactoryGirl.build :valid_user		
		# @invalid_user = FactoryGirl.build :invalid_user

	end

	# set up and initialize basic users etc
	describe "creation" do

		it "has a valid factory" do
												
			# FactoryGirl.create(:valid_user).should be_valid												
			FactoryGirl.build(:valid_user)

		end

		it "is invalid without a secret" do

			# FactoryGirl.build(:valid_user, :secret => nil).should_not be_valid

		end		

		it "is invalid without a key" do

			# FactoryGirl.build(:valid_user, :key => nil).should_not be_valid

		end

		it "is invalid without a uid" do

			# FactoryGirl.build(:valid_user, :key => nil).should_not be_valid	

		end

	end

	# test out our omniauth_create class method for initializing twitter etc
	describe "omniauth_create" do

		

	end

		



end
