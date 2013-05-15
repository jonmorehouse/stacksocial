class AppController < ApplicationController

	before_filter lambda { redirect_to :root if not logged_in?}
	before_filter lambda{ page_config "app" }

	def index

		# make sure that we are working with our elements etc

	end

end