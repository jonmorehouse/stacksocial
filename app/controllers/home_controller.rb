"
	Scenarios:

		1.) User not signed in -- generate our basic template for signing in
		2.) User signed in -- generate the app page

"

class HomeController < ApplicationController

	def index

		# use helper methods here to determine whether or not the user is logged in etc	
		render :json => {:message => session}

	end

end
