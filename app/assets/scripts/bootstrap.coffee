# declare our require js config json object
config = 

	# baseUrl: "javascripts/"

	# set this true / false to set up api loading from external sources
	status: false

	# declare paths -- this will need to be uploaded later on!
	paths: 
		jquery: "/components/jquery/jquery"
		angular: "/components/angular/angular"
		underscore: "/components/underscore/underscore"
		angularResource: "/components/angular-resource/angular-resource"
		angularStates: "/components/angular-ui-router/build/angular-ui-states"

		# load in facebook sdk etc
		facebook: "//connect.facebook.net/en_US/all.js#xfbml=1"
		# facebook: "/components/facebook/all"
		twitter: "http://platform.twitter.com/widgets"

	# initialize some shims to help us load our different modules
	shim:
		# initialize angular shim
		angular: 

			exports: "angular"

		angularResource:

			deps: ['angular']

		# angular states global element
		angularStates: 

			deps: ['angular']	

		# initialize facebook sdk element
		facebook:

			exports: "FB"	

		twitter:
			exports: "twttr"

	# make sure that we seperate this and require that angular is loaded up first!
	priority: ["angular", "facebook"]	
	# initailize our url args etc	
	urlArgs: 'v=0.1'

# pass the config json object to the require config function
require.config config
