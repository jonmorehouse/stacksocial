# require our angular_app
define ['angular_bootstrap', 'controllers/app_controller'], (app, controller) ->

	# initialize our application to use the app_controller
	# we really don't have any complex template logic in this application etc
	setup = ($routeProvider) ->	

		$routeProvider.when '/' {

			controller: "app"

		}	

	# initialize our element to use the routes provided above
	app.config ['$routeProvider', setup]