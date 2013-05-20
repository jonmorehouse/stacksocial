require 'spec_helper.rb'

module UserHelper

	def UserHelper.create_valid_user

		return User.omniauth_create OmniAuth.config.mock_auth[:twitter]

	end

end