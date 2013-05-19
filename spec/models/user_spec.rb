"
	Basic spec testing for our user model
	This model relies and interacts closely with twitter api
	Could have used fixtures / factory_girl_rails for the tests / factories -- possibly in the future as well we can

	Tests:

		1.) Valid input / output of users being created etc with different parameters
		2.) Valid elements being stored etc
		3.) Concern testing working well -- possibly extend this base class
"
require 'spec_helper'

describe User do

	before :each do

		@good = OmniAuth.config.mock_auth[:twitter]
		# create a copy of the good element and change the element
		@badKey = @good.clone
		@badKey[:credentials][:token] = Faker::Lorem.characters 20

		# now set up the badParams needed for our basic 
		@badParams = @good.clone.delete :credentials

	end

	describe "User creation" do

		it "has a valid factory" do
						


		end

	end
		



end
