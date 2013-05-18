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
		# initialize angular resource for various elements
		'angularResource',

		'angularStates',
		# initialize our application controller for this piece
		'controllers/controllers',
		# initialize basic routing etc
		'routes/router'
		
	], (angular, app, $) ->

		$(document).ready () ->
			
			# wait for angular document body to be ready
			angular.element(document).ready () ->

				# bootstrap our scope to the correct element that we are working with
				angular.bootstrap document, ['app']

				# now that its bootstrapped, we need to initialize the angular-ui-router to use this properly
				# app.run ['$rootScope', '$state', '$stateParams'], ($rootScope, $state, $stateParams) ->

				# 	$rootScope.$state = $state
				# 	$rootScope.$stateParams = $stateParams


				