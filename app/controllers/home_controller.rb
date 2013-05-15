"
	This is the main application logic page. This page is responsible for driving the require front end apps etc
	This page is our main access to the portal that we're working with etc

	Scenarios:

		1.) User not signed in -- generate our basic template for signing in
		2.) User signed in -- generate the app page

"

class HomeController < ApplicationController

	# place stylesheets etc that we need here
	before_filter lambda{ page_config "home", (production?) ? nil : ["home", "footer"] }

	def index

		if logged_in? 

			redirect_to app_url								

		end

	end

end
