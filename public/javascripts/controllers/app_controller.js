/*
	This is my primary application controller
	Basic scoping logic is handled here, as this should be scoped to the full page
	I'm expecting this to be the root scope and all other controllers work on objects inside the application
*/


(function() {
  define(['angular_bootstrap'], function(app) {
    return app.controller('AppController', [
      '$rootScope', '$location', '$resource', function($scope, $location, $resource) {
        var locationPath, loggedIn;

        $scope.currentUser = {
          loggedIn: true,
          name: "Jon Morehouse"
        };
        $scope.currentProfile = {};
        $scope.currentData = {};
        locationPath = function() {
          return $location.path();
        };
        loggedIn = function() {
          if (!$scope.currentUser.loggedIn) {
            return false;
          }
          return true;
        };
        return $scope.$watch(locationPath, function(newValue, oldValue) {
          if (!loggedIn()) {
            return window.location.href = "/logout";
          }
        });
      }
    ]);
  });

}).call(this);
