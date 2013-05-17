# now we can return different elements and pieces here to the caller etc
define ['angular', 'angularResource', 'angularStates'], (angular, angularResource, angularStates) ->

	# initialize our angular app as a module
	return angular.module 'app', ['ngResource', 'ui.compat']

		
