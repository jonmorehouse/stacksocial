"
	Declare all helper methods here that are only being used for the current twitter api functionality
	This is the base class for all api pieces
"
class Api::BaseController < ApplicationController
		
	rescue_from Exception, :with => :error_handler
	respond_to :json
	
	protected

	def error_handler

		render :json => {:message => "BAD ELEMENT"}
		

	end


end