(function() {
  "	This app is responsible for all of the various elements that need to be injected into the page as we update and change the search page	The idea is that we link the ng-model for search to the keywords and what elements we want	We need to have some sort of resource which will determine what type of search we are completing";  define(['angular_bootstrap'], function(app) {
    return app.controller('SearchController', [
      '$rootScope', '$location', function($scope, $location) {
        $scope.search = {
          current: "Twitter Search",
          type: "Tweets / Users"
        };
        return $scope.change = function() {};
      }
    ]);
  });

}).call(this);
