(function() {
  "	Initialize main application logic using require.js and angular bootstrapped here";  require(['bootstrap'], function() {
    return require(['angular', 'angular_bootstrap', 'jquery', 'controllers/controllers', 'router'], function(angular, app) {
      return angular.element(document).ready(function() {
        return angular.bootstrap(document, ['app']);
      });
    });
  });

}).call(this);