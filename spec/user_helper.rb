require 'spec_helper.rb'
"
	This module is for any user helper functions that need to be modularized and called around the application
"

module UserHelper

	# create and build a valid user
	def UserHelper.create_valid_user

		return User.omniauth_create OmniAuth.config.mock_auth[:twitter]

	end

	# put any code here that is useful for creating sessions etc for user login 
	def UserHelper.create_session
	
		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter] 

	end

end