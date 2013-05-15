(function() {
  "	This controller is responsible for interacting with the current user etc	Responsible for tweeting on behalf of the user	Responsible for getting the friends and followers etc";  define(['angular_bootstrap'], function(app) {
    return app.controller('UserController', [
      '$scope', '$location', function($scope, $location) {
        return $scope.currentUser = {
          name: "Jon Morehouse"
        };
      }
    ]);
  });

}).call(this);
