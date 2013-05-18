###
	This is my primary application controller
	Basic scoping logic is handled here, as this should be scoped to the full page
	I'm expecting this to be the root scope and all other controllers work on objects inside the application
###

define ['angular_bootstrap'], (app) ->

	app.controller 'AppController', ['$rootScope', '$location', '$resource', ($scope, $location, $resource) ->

		$scope.currentUser =
			
			loggedIn: true
			name: "Jon Morehouse"

		# declare high level profile / data etc
		$scope.currentProfile = {}
		
		# 
		$scope.currentData = {}

		# grab location path etc
		locationPath = ->
			return $location.path()

		# check user here - if the user is not logged in go ahead and redirect them
		loggedIn = () ->

			# we can do some other logic here as well and then we can control scoping on this element etc
			return false if not $scope.currentUser.loggedIn

			return true

		# check loggedIn anytime the application changes etc ...
		$scope.$watch locationPath, (newValue, oldValue) ->  

			# switch to the login page if not logged in
			# $scope.$apply($location.path('/login')) if not loggedIn()

			# alternatively we can do the location change to force a new signin
			window.location.href = "/logout" if not loggedIn()

	]
