require 'spec_helper'

describe Api::UserController do

	before do

		request.env["omniauth.auth"] = Omniauth.config.mock_auth[:twitter]
	end

	describe "GET index" do	

		it "Should return a user profile if I'm logged in properly" do

			get :index	
			puts response.body

		end

		it "Should return an error message if I'm not logged in properly" do




		end

	end

end
