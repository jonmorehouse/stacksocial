"
	This controller is responsible for interacting with the current user etc
	Responsible for tweeting on behalf of the user
	Responsible for getting the friends and followers etc
"
define ['angular_bootstrap'], (app) ->

	app.controller 'UserController', ['$scope', ($scope) ->

		$scope.currentUser = 

			name: "Jon Morehouse"

	]	

	# initialize app controller etc
	app.controller 'UserControllerOLD', ['$scope', '$location', '$resource', ($scope, $location, $resource) ->

		# 
		User = $resource '/api/user'

		# get user tweets
		Tweets = $resource '/api/search/user_tweets'

		$scope.currentUser = User.get {}, () ->

		# initialize our values from teh server
		$scope.init = ->	

			$scope.currentUser = User.get {}, () ->

	]
