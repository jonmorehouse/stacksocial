(function() {
  "	This controller is responsible for interacting with the current user etc	Responsible for tweeting on behalf of the user	Responsible for getting the friends and followers etc";  define(['angular_bootstrap'], function(app) {
    app.controller('UserController', [
      '$scope', function($scope) {
        return $scope.currentUser = {
          name: "Jon Morehouse"
        };
      }
    ]);
    return app.controller('UserControllerOLD', [
      '$scope', '$location', '$resource', function($scope, $location, $resource) {
        var Tweets, User;

        User = $resource('/api/user');
        Tweets = $resource('/api/search/user_tweets');
        $scope.currentUser = User.get({}, function() {});
        return $scope.init = function() {
          return $scope.currentUser = User.get({}, function() {});
        };
      }
    ]);
  });

}).call(this);
