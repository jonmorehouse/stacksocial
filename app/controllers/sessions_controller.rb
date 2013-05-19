"
	This is the primary sessions controller that handles login / authentciation
	The idea is that the user document only persists as long as the current session
	We pass the entire omniauth middleware request to the user model for it to be handled properly

	Logout is responsible for destroying user document

	Note that I turned off mongoid's 'allow_dynamic_fields' option so that we don't have a bunch of extra data persisted to our db
	Everything is handled manually in the model
"
class SessionsController < ApplicationController

	before_filter :current_user, :only => [:destroy]

	# rescue from any exceptions and just send back to the homepage for now!
	rescue_from Exception do |exception|

		redirect_to logout_url

	end

	def new

		# we want to route to our omniauth twitter provider etc here
		redirect_to "/auth/twitter"

	end

	# this session is created with the oauth callback element
	def create

		# grab the authentication return
		auth = request.env["omniauth.auth"]

		# now create a temporary user with the auth element etc
		user = User.omniauth_create auth

		# now set the session_id 
		session[:user_id] = user.id

		# redirect back to the root which can successfully switch the pages of the application etc
		redirect_to root_url, :notice => "Successful Authentication"	
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

	def test

		render :json => {"message" => "HELLO WORLD"}
		
	end
end
