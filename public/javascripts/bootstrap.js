(function() {
  var config;

  config = {
    status: false,
    paths: {
      jquery: "/components/jquery/jquery",
      angular: "/components/angular/angular",
      underscore: "/components/underscore/underscore",
      angularResource: "/components/angular-resource/angular-resource",
      angularStates: "/components/angular-ui-router/build/angular-ui-states",
      facebook: "//connect.facebook.net/en_US/all.js#xfbml=1",
      twitter: "http://platform.twitter.com/widgets"
    },
    shim: {
      angular: {
        exports: "angular"
      },
      angularStates: {
        deps: ['angular']
      },
      facebook: {
        exports: "FB"
      },
      twitter: {
        exports: "twttr"
      },
      angularResource: {
        deps: ['jquery'],
        exports: 'angularResource'
      },
      priority: ["angular", "facebook"],
      urlArgs: 'v=0.1'
    }
  };

  require.config(config);

}).call(this);
