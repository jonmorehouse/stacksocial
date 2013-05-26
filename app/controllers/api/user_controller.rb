class Api::UserController < Api::BaseController

	# get the current user by default
	def index

		render "api/user"
	end

	# get an individual user
	def show

		render :json => User.where(uid: @params[:id])
		
	end

	# update the status of the user
	def update
		
		# check if the current use is this person
		
	end

	def message

			

	end


end
