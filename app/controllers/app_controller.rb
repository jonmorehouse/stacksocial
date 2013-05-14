class AppController < ApplicationController

	before_filter :current_user

	def index

		# make sure that we are working with our elements etc
		redirect_to :root if not logged_in?

	end

end