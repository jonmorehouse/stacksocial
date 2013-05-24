class Api::UserController < Api::BaseController

	# get the user etc
	def index

		render :json => @user.to_json	


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
