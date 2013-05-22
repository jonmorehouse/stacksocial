require 'spec_helper'
require 'user_helper'

describe Api::UserController do

	before do


		UserHelper.create_valid_user()
		@profile = FactoryGirl.create :profile
		@user = FactoryGirl.create :user

	end

	describe "GET index" do	

		it "Should return a user profile if I'm logged in properly" do

			get :index
			puts response.body
			# response = JSON.loads response.body
			# puts response

		end

		it "Should return an error message if I'm not logged in properly" do




		end

	end

end
