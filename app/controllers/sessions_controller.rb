class SessionsController < ApplicationController

	def new

		redirect_to "/auth/twitter"

	end

	# this session is created with the oauth callback element
	def create

		raise request.env["omniauth.auth"].to_yaml

	end

	def failure

		# do a clever redirect here!

	end

	def destroy

		reset_session

		redirect_to root_url, :notice => "Sign Out"

	end

end
