(function() {
  "	Initialize main application logic using require.js and angular bootstrapped here";  require(['bootstrap'], function() {
    return require(['angular', 'angular_bootstrap', 'jquery', 'angularResource', 'angularStates', 'controllers/controllers', 'routes/router'], function(angular, app, $) {
      return $(document).ready(function() {
        return angular.element(document).ready(function() {
          return angular.bootstrap(document, ['app']);
        });
      });
    });
  });

}).call(this);
