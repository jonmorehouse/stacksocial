(function() {
  "	Initialize all different routers for the search functionality!	This is the element that should respond to the different search elements etc";  define(['angular_bootstrap', 'controllers/controllers'], function(app, controllers) {
    return app.config([
      '$stateProvider', '$routeProvider', '$urlRouterProvider', function($stateProvider, $routeProvider, $urlRouterProvider) {
        return $stateProvider.state('search', {
          url: '/',
          views: {
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
      }
    ]);
  });

}).call(this);
