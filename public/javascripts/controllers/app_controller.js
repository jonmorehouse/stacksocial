(function() {
  "	This is my primary application controller	Basic scoping logic is handled here, as this should be scoped to the full page	I'm expecting this to be the root scope and all other controllers work on objects inside the application";  define(['angular_bootstrap'], function(app) {
    return app.controller('AppController', [
      '$rootScope', '$location', '$resource', function($scope, $location, $resource) {
        return $scope.currentUser = {
          name: "Jon Morehouse"
        };
      }
    ]);
  });

}).call(this);
