class SessionsController < ApplicationController

	def new

		redirect_to "/auth/twitter"

	end

	# this session is created with the oauth callback element
	def create

		
			
	end

	# create a failure message
	def failure

		# do a clever redirect here!
		render :json => {:message => "FAILED LOGIN"}

	end

	def destroy

		reset_session

		redirect_to root_url, :notice => "Sign Out"

	end

end
