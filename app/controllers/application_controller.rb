"
  Extend our basic application controller so that we can include some basic helper methods to be used throughout our application
"

class ApplicationController < ActionController::Base
  protect_from_forgery

  # setup page header logic in page_config element
  helper_method :page_config
  # check whether or not we're in production mode
  helper_method :production?
  # declare helper methods throughout
  helper_method :current_user
  # check if our user is actually signed in etc
  helper_method :logged_in?

  private

    def page_config(page_id, stylesheets = [])

      @config = {

         :page_title => "Twitter App",  
         # only include the require app if we are going to be needing that particular piece
         :require_app => (page_id != "home") ? "app" : nil,
         # place any global styles / resets in this list globally!
         :stylesheets => [page_id] + stylesheets
      }

    end

    # determine whether or not we are working on a production app
    # this makes it easier to handle assets etc as we may have a long list of stylesheets during dev but in production compress to only one
    def production?

      return true if Rails.env.production?

    end


  	# check whether or not a user is signed in
  	def logged_in?			

  		  return true if current_user	

  	end

  	# get the current user element etc
  	def current_user

      begin 

        @user ||= User.find(session[:user_id]) if session[:user_id]

      # if we have a mongoid error, handle it nicely and return 
      rescue Mongoid::Errors::DocumentNotFound

        nil

      end
  	end


end
