class Api::UserController < Api::BaseController

	# get the user etc
	def index

		# get the currently stored user
		render :json => {:message => "HELLO WORLD FROM THE USER CONTROLLER INDEX FUNCTION!"}
	end

	# get an individual user
	def get(params)


	end

	# update the status of the user
	def update

		# check if the current use is this person
	end

	def message

			

	end


end
