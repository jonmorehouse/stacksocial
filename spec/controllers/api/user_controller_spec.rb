require 'spec_helper'

describe Api::UserController do

	before do

		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]
		@profile = FactoryGirl.build :profile
		@user = FactoryGirl.build :user

	end

	describe "GET index" do	

		it "Should return a user profile if I'm logged in properly" do

			get :index




		end

		it "Should return an error message if I'm not logged in properly" do




		end

	end

end
