class SessionsController < ApplicationController

	before_filter :current_user, :only => [:destroy]

	def new

		# we want to route to our omniauth twitter provider etc here
		redirect_to "/auth/twitter"

	end

	# this session is created with the oauth callback element
	def create

		# grab the authentication return
		auth = request.env["omniauth.auth"]

		render :json => auth

		# now create a temporary user with the auth element etc
		# user = User.create

		# now set the session_id 
		# session[:user_id] = user.id

		# 
		# redirect_to root_url, :notice => "Successful Authentication"	

	end

	# create a failure message
	def failure

		# do a clever redirect here!
		redirect_to root_url, :notice => "Failed Authentication"

	end

	# since our user elements are only temporary -- lets go ahead and delete the elements
	def destroy

		# destroy the user from the database
		@user.destroy if @user

		# delete current user		
		reset_session

		# we want to redirect to our root element in the application etc
		redirect_to root_url, :notice => "Successfully Signed Out"

	end
end
