class ApplicationController < ActionController::Base
  protect_from_forgery


  helper_method :current_user
  helper_method :user_signed_in?

  private

  	# get the current user element etc
  	def current_user

  			

  	end


end
