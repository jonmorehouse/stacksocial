require 'spec_helper'
require 'user_helper'


describe Api::UserController do

	before do

		@user = UserHelper.create_valid_user()
		session[:id] = @user.id

	end

	describe "GET index" do	

		it "Should return a user profile if I'm logged in properly" do

			get :index
			puts response.body


		end

		it "Should return an error message if I'm not logged in properly" do

			get :index
			puts response.body


		end

	end

end
