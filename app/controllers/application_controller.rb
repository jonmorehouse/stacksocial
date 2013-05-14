"
  Extend our basic application controller so that we can include some basic helper methods to be used throughout our application
"

class ApplicationController < ActionController::Base
  protect_from_forgery

  # declare helper methods throughout
  helper_method :current_user
  # check if our user is actually signed in etc
  helper_method :logged_in?

  private

  	# check whether or not a user is signed in
  	def logged_in?			

  		  return true if current_user	

  	end

  	# get the current user element etc
  	def current_user

      begin 

        @user ||= User.find(session[:user_id]) if session[:user_id]

      # if we have a mongoid error, handle it nicely and return 
      rescue Mongoid::Errors::DocumentNotFound

        nil

      end
  	end


end
