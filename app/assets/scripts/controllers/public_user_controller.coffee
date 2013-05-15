"
	This controller is responsible for grabbing the public user from the server given an id
	This controller is also responsible for tweeting at or towards this person given our current user
"

define ['angular_bootstrap'], (app) ->

	app.controller 'PublicUserController', ['$scope', '$location'], ($scope, $location) ->

		$scope.publicUser = 		

			name: "Jon's Friend"

			