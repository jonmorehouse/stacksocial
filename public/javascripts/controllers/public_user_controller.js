(function() {
  "	This controller is responsible for grabbing the public user from the server given an id	This controller is also responsible for tweeting at or towards this person given our current user";  define(['angular_bootstrap'], function(app) {
    return app.controller('PublicUserController', ['$scope', '$location'], function($scope, $location) {
      return $scope.publicUser = {
        name: "Jon's Friend"
      };
    });
  });

}).call(this);
