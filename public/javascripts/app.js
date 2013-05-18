/*
	Initialize main application logic using require.js and angular bootstrapped here
*/


(function() {
  require(['bootstrap'], function() {
    return require(['jquery'], function($) {
      return $(document).ready(function() {
        return require(['angular', 'angular_bootstrap', 'angularResource', 'angularStates', 'controllers/controllers', 'routes/router'], function(angular, app) {
          return angular.element(document).ready(function() {
            return angular.bootstrap(document, ['app']);
          });
        });
      });
    });
  });

}).call(this);
