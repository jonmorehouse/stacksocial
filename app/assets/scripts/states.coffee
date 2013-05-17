"
	A few notes, 
	1.) routeProvider is a shim that implements the current angularjs $route / $routeProvider on top of $stateProvider
	2.) routeProvider connects the state to the route etc

	https://github.com/angular-ui/ui-router/issues/26

	# great resource!
	https://github.com/angular-ui/ui-router/wiki/Multiple-Named-Views
"

define ['angular_bootstrap', 'controllers/controllers'], (app, controllers) ->

	app.config ['$stateProvider', '$routeProvider', '$urlRouterProvider'], ($stateProvider, $routeProvider, $urlRouterProvider) ->

		$routeProvider.when('/search/:type', {
			redirectTo: '/'
		})

		$routeProvider.when('/', {

		})

		$stateProvider.state('/', {

			url: '/'
			templateUrl: 


		})