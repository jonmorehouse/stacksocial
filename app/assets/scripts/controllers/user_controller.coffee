###
	This controller is responsible for interacting with the current user etc
	Responsible for tweeting on behalf of the user
	Responsible for getting the friends and followers etc
###
define ['angular_bootstrap'], (app) ->

	# initialize app controller etc
	app.controller 'UserController', ['$rootScope', '$location', '$resource', ($scope, $location, $resource) ->

		resources = 

			user: $resource '/api/user'
			tweets: $resource '/api/user_tweets'
			tweet: $resource '/api/tweet'

		# initialize a SEAF for controller setup and modularization etc
		do () ->

			# initialize current scope elements etc
			$scope.currentUser = User.get {}, () ->


		# now we want to submit different elements etc for different pieces
	]
