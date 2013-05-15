"
	Initialize main application logic using require.js and angular bootstrapped here

"
require ['bootstrap'], ->

	require [

		# grab the angular library etc
		'angular', 
		# initialize angular bootstrap which gives our application module
		'angular_bootstrap',
		# initialize jquery -- not really needeed for application but for some reason I coudln't get angular.element(document).ready to call without it
		'jquery',
		# initialize our application controller for this piece
		'controllers/controllers',
		# initialize basic routing etc
		'router'
		
	], (angular, app) ->

		# wait for angular document body to be ready
		angular.element(document).ready () ->

			angular.bootstrap document, ['app']

				