class Api::UserController < ApplicationController

	# get the user etc
	def index

		render :json => {"name" => "Jon T. Morehouse"}
		
	end


end
