class HomeController < ApplicationController

	def index

		render :json => {:message => "HELLO WORLD"}
	end

end
