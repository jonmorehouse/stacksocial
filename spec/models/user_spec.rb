require 'spec_helper'

describe User do

	before :each do

		request.env["omniauth.auth"] => OmniAuth.config.mock_auth[:twitter]

	end
		
			



end
