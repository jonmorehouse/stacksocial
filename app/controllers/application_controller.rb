class ApplicationController < ActionController::Base
  protect_from_forgery

  # declare helper methods throughout
  helper_method :user
  helper_method :signed_in?

  private

  	# check whether or not a user is signed in
  	def signed_in?			

  		  return true if current_user	

  	end

  	# get the current user element etc
  	def user

      begin 

        @user ||= User.find(session[:user_id]) if session[:user_id]

      # if we have a mongoid error, handle it nicely and return 
      rescue Mongoid::Errors::DocumentNotFound

        nil

      end
  	end


end
