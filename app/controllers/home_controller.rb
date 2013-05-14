"
	Scenarios:

		1.) User not signed in -- generate our basic template for signing in
		2.) User signed in -- generate the app page

"

class HomeController < ApplicationController

	def index

		if signed_in?

			# render something cool here!

		else

			# check for flash errors etc

		end	

	end

end
