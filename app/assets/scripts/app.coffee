"
	Initialize main application logic using require.js and angular bootstrapped here

"
require ['bootstrap'], ->

	require ['jquery'], ($) ->

		$(document).ready () ->

			require [

				# grab the angular library etc
				'angular', 
				# initialize angular bootstrap which gives our application module
				'angular_bootstrap',
				# initialize angular resource for various elements
				'angularResource',
				# enable angular elements		
				'angularStates',
				# initialize our application controller for this piece
				'controllers/controllers',
				# initialize basic routing etc
				'routes/router'
				
			], (angular, app) ->
				
				# wait for angular document body to be ready
				angular.element(document).ready () ->

					# bootstrap our scope to the correct element that we are working with
					angular.bootstrap document, ['app']



					