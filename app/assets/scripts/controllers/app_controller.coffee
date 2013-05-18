"
	This is my primary application controller
	Basic scoping logic is handled here, as this should be scoped to the full page
	I'm expecting this to be the root scope and all other controllers work on objects inside the application
"
define ['angular_bootstrap'], (app) ->

	app.controller 'AppController', ['$scope', '$location', '$resource', ($scope, $location, $resource) ->

		$scope.currentUser =

			name: "Jon Morehouse"





	]
