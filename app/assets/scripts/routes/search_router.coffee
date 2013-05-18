"
	Initialize all different routers for the search functionality!
	This is the element that should respond to the different search elements etc
"

define ['angular_bootstrap', 'controllers/controllers'], (app, controllers) ->

	app.config ['$stateProvider', '$routeProvider', '$urlRouterProvider', ($stateProvider, $routeProvider, $urlRouterProvider) ->

		$stateProvider.state 'search', 

			url: 

				'/'

			views:

				# initialize the various profiles etc
				search:	

					templateUrl: 'partials/search'
					controller: 'SearchController'

				items:

					templateUrl: 'partials/tweets'
					controller: 'ItemController'

	]
