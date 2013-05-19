require 'spec_helper'

describe Api::UserController do

	describe "GET index" do	

		it "Should return a user profile if I'm logged in properly" do

			get :index	

		end

		it "Should return an error message if I'm not logged in properly" do


		end

	end

end
