"
	Declare all helper methods here that are only being used for the current twitter api functionality
	This is the base class for all api pieces

	Error Handling -- in the future we need to have a global error handling class
	http://api.rubyonrails.org/classes/ActiveSupport/Rescuable/ClassMethods.html

	This is the base_controller which is responsible for initializing our user and redirecting the application to go back home if we have issues
"
class Api::BaseController < ApplicationController

	# all elements should respond to json from our api
	respond_to :json
		
	# rescue from all execptions with the error_handler function
	rescue_from Exception do |exception|

		# create basic application logic here so that we can handle errors etc here properly	
		# for now lets just render a basic element so that we can properly control what we are outputting to the caller
		# error_handler exception
		render :json => {:message => exception}

	end

	before_filter :init

	protected

	def init

		raise ArgumentError, "HELLO WORLD ...."	

	end

	def error_handler(message)

		render :json => {:message => message}

	end


end