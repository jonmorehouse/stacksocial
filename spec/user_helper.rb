require 'spec_helper.rb'
"
	This module is for any user helper functions that need to be modularized and called around the application
"

module UserHelper

	# create and build a valid user
	def UserHelper.create_valid_user

		# this is our valid twitter user that we are creating
		return User.omniauth_create OmniAuth.config.mock_auth[:twitter]

	end


end