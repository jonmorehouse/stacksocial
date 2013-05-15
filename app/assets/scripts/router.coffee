# require our angular_app
define ['angular_bootstrap', 'controllers/controllers'], (app, controller) ->

	# initialize our application to use the app_controller
	# we really don't have any complex template logic in this application etc
	setup = ($routeProvider) ->	

		$routeProvider.when '/public/:user', {

			controller: "PublicUserController"
			templateUrl: "partials/public_user.html"
		}

		# initialize our profile element -- this is for tweeting for our current user etc
		$routeProvider.when '/', {

			# user our usercontroller which handles all privatized data etc
			controller: "UserController"
			# include the user partial etc
			templateUrl: "partials/user.html"
		}	


	# initialize our element to use the routes provided above
	app.config ['$routeProvider', setup]