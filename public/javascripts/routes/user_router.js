/*
	A few notes, 
	1.) routeProvider is a shim that implements the current angularjs $route / $routeProvider on top of $stateProvider
	2.) routeProvider connects the state to the route etc

	https://github.com/angular-ui/ui-router/issues/26

	# great resource!
	https://github.com/angular-ui/ui-router/wiki/Multiple-Named-Views
*/


(function() {
  define(['angular_bootstrap', 'controllers/controllers'], function(app, controllers) {
    return app.config([
      '$stateProvider', '$routeProvider', '$urlRouterProvider', function($stateProvider, $routeProvider, $urlRouterProvider) {
        $stateProvider.state('user', {
          url: '/',
          views: {
            profile: {
              templateUrl: 'partials/user',
              controller: 'UserController'
            },
            search: {
              templateUrl: 'partials/search',
              controller: 'SearchController'
            },
            items: {
              templateUrl: 'partials/tweets',
              controller: 'ItemController'
            }
          }
        });
        return $urlRouterProvider.otherwise('/');
      }
    ]);
  });

}).call(this);
