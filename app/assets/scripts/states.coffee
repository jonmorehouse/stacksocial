"
	A few notes, 
	1.) routeProvider is a shim that implements the current angularjs $route / $routeProvider on top of $stateProvider
	2.) routeProvider connects the state to the route etc

	https://github.com/angular-ui/ui-router/issues/26

	# great resource!
	https://github.com/angular-ui/ui-router/wiki/Multiple-Named-Views
"
define ['angular_bootstrap', 'controllers/controllers'], (app, controllers) ->

	# ask for access to the global stateprovider, routerpvider, urlrouterProvider and pass them to a function
	app.config ['$stateProvider', '$routeProvider', '$urlRouterProvider', ($stateProvider, $routeProvider, $urlRouterProvider) ->

		# now actually set the views above to be globally applied in this scope
		$stateProvider.state 'user', 

			url:
				'/'
			# initialize views for base user element
			views: 

				# initialize our base user profile page
				profile: 

					templateUrl: 'partials/user'
					controller: 'UserController'	

				# search is what truly triggers our search functionality!
				search:

					templateUrl: 'partials/search'	
					controller: 'SearchController'

				# at first its going to be the basic tweets etc
				items: 	

					templateUrl: 'partials/tweets'
					controller: 'ItemController'
					
	]




