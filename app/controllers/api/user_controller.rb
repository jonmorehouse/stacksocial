class Api::UserController < Api::BaseController

	# get the current user by default
	def index

		pretty_render "api/user"
	end

	# get an individual user
	def show

		@current_profile = Profile.get_profile params[:id], "asdf"

		pretty_render "api/public_user"	

	end

	# update the status of the user
	def update
		
		# check if the current use is this person
				
		
	end

	def message

		# send a message to another user through our application		
		# params = id / message

	end


end
