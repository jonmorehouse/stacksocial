(function() {
  define(['angular_bootstrap'], function(app) {
    return app.controller('AppController', [
      '$scope', '$location', function($scope, $location) {
        return $scope.user = {
          name: "Jon Morehouse"
        };
      }
    ]);
  });

}).call(this);
