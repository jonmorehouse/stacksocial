class ApplicationController < ActionController::Base
  protect_from_forgery

  # declare helper methods throughout
  helper_method :current_user

  private

  	# check whether or not a user is signed in
  	def signed_in?			

  			

  	end

  	# get the current user element etc
  	def current_user

  		# make sure we have a valid session with our user's id in it
  		if !session.has_key? :user_id	

  			# if we don't go ahead and reroute to the main application page
  			redirect_to root_url, :notice => "Not Logged In"

  		# return the current user etc!
		@user = User.where(_id: session[:user_id])  						

  	end


end
