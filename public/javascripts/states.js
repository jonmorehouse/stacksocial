(function() {
  define(['angular_bootstrap', 'controllers/controllers'], function(app, controllers) {
    return app.config(['$stateProvider', '$routeProvider']);
  });

}).call(this);
