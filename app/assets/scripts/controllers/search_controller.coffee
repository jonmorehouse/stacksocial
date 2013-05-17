"
	This app is responsible for all of the various elements that need to be injected into the page as we update and change the search page
	The idea is that we link the ng-model for search to the keywords and what elements we want
	We need to have some sort of resource which will determine what type of search we are completing
"
define ['angular_bootstrap'], (app) -> 

	app.controller 'SearchController', ['$scope', '$location', ($scope, $location)->

		$scope.search =

			keywords: "Twitter Search"

			# declare whether we are working with a hash / user  
			type: "hash"
			results: [

				# elements go in here for returning etc
			]
	]
