(function() {
  define(['angular_bootstrap', 'controllers/controllers'], function(app, controller) {
    var setup;

    setup = function($routeProvider) {
      $routeProvider.when('/public/:user', {
        controller: "PublicUserController",
        templateUrl: "partials/public_user.html"
      });
      return $routeProvider.when('/', {
        controller: "UserController",
        templateUrl: "partials/user.html"
      });
    };
    return app.config(['$routeProvider', setup]);
  });

}).call(this);
