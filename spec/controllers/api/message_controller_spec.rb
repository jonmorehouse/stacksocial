require 'spec_helper'

describe Api::MessageController do

	before :each do

		request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter]

	end

	describe "Post message#create" do	

		it "Should allow you to successfully message someone else" do	


		end

		it "Should allow you to update your own status" do

			
			
		end

		it "Should catch any exceptions and then return errors locally" do



		end

	end
	

end
