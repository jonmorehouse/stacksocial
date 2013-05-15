# Generated on 2013-04-14 using generator-webapp 0.1.7
"use strict"
lrSnippet = require("grunt-contrib-livereload/lib/utils").livereloadSnippet
mountFolder = (connect, dir) ->
  connect.static require("path").resolve(dir)


# # Globbing
# for performance reasons we're only matching one level down:
# 'test/spec/{,*/}*.js'
# use this if you want to match all subfolders:
# 'test/spec/**/*.js'
module.exports = (grunt) ->
  
  # load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks
  
  # configurable paths
  yeomanConfig =
    
    # where javascripts and coffeescripts etc go ...
    app: "app/assets"
    dist: "dist"
    public: "public/"

  grunt.initConfig
    yeoman: yeomanConfig
    watch:
      coffee:
        files: ["<%= yeoman.app %>/scripts/{,*/}*.{coffee, js}"]
        tasks: ["coffee:dist"]

      coffeeTest:
        files: ["test/spec/{,*/}*.coffee"]
        tasks: ["coffee:test"]

      compass:
        files: ["<%= yeoman.app %>/styles/{,*/}*.{scss,sass}", "<%= yeoman.app %>/styles/mixins/_*.sass", "<%= yeoman.app %>/styles/partials/_*.sass"]
        tasks: ["compass:dist"]

      jade:
        files: ["<%= yeoman.app %>/scripts/partials/{,*/}*.jade"]
        tasks: ["jade:compile"]

    connect:
      options:
        port: 9000
        
        # change this to '0.0.0.0' to access the server from outside
        hostname: "localhost"

      livereload:
        options:
          middleware: (connect) ->
            [lrSnippet, mountFolder(connect, ".tmp"), mountFolder(connect, "app")]

      test:
        options:
          middleware: (connect) ->
            [mountFolder(connect, ".tmp"), mountFolder(connect, "test")]

      dist:
        options:
          middleware: (connect) ->
            [mountFolder(connect, "dist")]

    open:
      server:
        path: "http://localhost:<%= connect.options.port %>"

    clean:
      dist:
        files: [
          dot: true
          src: [".tmp", "<%= yeoman.dist %>/*", "!<%= yeoman.dist %>/.git*"]
        ]

      server: ".tmp"

    jshint:
      options:
        jshintrc: ".jshintrc"

      all: ["Gruntfile.js", "<%= yeoman.app %>/scripts/{,*/}*.js", "!<%= yeoman.app %>/scripts/vendor/*", "test/spec/{,*/}*.js"]

    mocha:
      all:
        options:
          run: true
          urls: ["http://localhost:<%= connect.options.port %>/index.html"]

    coffee:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.app %>/scripts"
          src: "{,*/}*.coffee"
          dest: "public/javascripts"
          ext: ".js"
        ]

      test:
        files: [
          expand: true
          cwd: "test/spec"
          src: "{,*/}*.coffee"
          dest: ".tmp/spec"
          ext: ".js"
        ]

    compass:
      
      # 
      options:
        config: "config/compass.rb"
      dist: {}

    
    # not used since Uglify task does concat,
    # but still available if needed
    #concat: {
    #            dist: {}
    #        },
    requirejs:
      dist:
        
        # Options: https://github.com/jrburke/r.js/blob/master/build/example.build.js
        options:
          
          # `name` and `out` is set by grunt-usemin
          baseUrl: "public/javascripts"
          optimize: "none"
          
          # TODO: Figure out how to make sourcemaps work with grunt-usemin
          # https://github.com/yeoman/grunt-usemin/issues/30
          #generateSourceMaps: true,
          # required to support SourceMaps
          # http://requirejs.org/docs/errors.html#sourcemapcomments
          preserveLicenseComments: false
          useStrict: true
          wrap: true

    
    #uglify2: {} // https://github.com/mishoo/UglifyJS2
    rev:
      dist:
        files:
          src: ["<%= yeoman.dist %>/javasacripts/{,*/}*.js", "<%= yeoman.dist %>/stylesheets/{,*/}*.css", "<%= yeoman.dist %>/images/{,*/}*.{png,jpg,jpeg,gif,webp}", "<%= yeoman.dist %>/fonts/*"]

    useminPrepare:
      html: "<%= yeoman.app %>/index.html"
      options:
        dest: "<%= yeoman.dist %>"

    usemin:
      html: ["<%= yeoman.dist %>/{,*/}*.html"]
      css: ["<%= yeoman.dist %>/styles/{,*/}*.css"]
      options:
        dirs: ["<%= yeoman.dist %>"]

    imagemin:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.app %>/images"
          src: "{,*/}*.{png,jpg,jpeg}"
          dest: "<%= yeoman.dist %>/images"
        ]

    svgmin:
      dist:
        files: [
          expand: true
          cwd: "<%= yeoman.app %>/images"
          src: "{,*/}*.svg"
          dest: "<%= yeoman.dist %>/images"
        ]

    cssmin:
      dist:
        files:
          "<%= yeoman.dist %>/styles/main.css": [".tmp/styles/{,*/}*.css", "<%= yeoman.app %>/styles/{,*/}*.css"]

    htmlmin:
      dist:
        options: {}
        
        #removeCommentsFromCDATA: true,
        #                    // https://github.com/yeoman/grunt-usemin/issues/44
        #                    //collapseWhitespace: true,
        #                    collapseBooleanAttributes: true,
        #                    removeAttributeQuotes: true,
        #                    removeRedundantAttributes: true,
        #                    useShortDoctype: true,
        #                    removeEmptyAttributes: true,
        #                    removeOptionalTags: true
        files: [
          expand: true
          cwd: "<%= yeoman.app %>"
          src: "*.html"
          dest: "<%= yeoman.dist %>"
        ]

    
    # Put files not handled in other tasks here
    copy:
      dist:
        files: [
          expand: true
          dot: true
          cwd: "<%= yeoman.app %>"
          dest: "<%= yeoman.dist %>"
          src: ["*.{ico,txt}", ".htaccess", "images/{,*/}*.{webp,gif}", "styles/fonts/*"]
        ]

    concurrent:
      server: ["coffee:dist", "compass:server"]
      test: ["coffee", "compass"]
      dist: ["coffee", "compass:dist", "imagemin", "svgmin", "htmlmin", "jade"]

    bower:
      options:
        exclude: ["modernizr"]

      all:
        rjsConfig: "<%= yeoman.app %>/scripts/main.js"

    jade:    
      compile:
        options:
          pretty: true
          data:
            debug: true
        files:[
          expand: true
          cwd: "<%= yeoman.app %>/scripts/partials"
          dest: "public/partials"
          src: "*.jade"
          ext: ".html"
        ]   

  # load our initial jade task for this project
  grunt.loadNpmTasks 'grunt-contrib-jade'

  grunt.renameTask "regarde", "watch"

  grunt.registerTask "server", (target) ->
    return grunt.task.run(["build", "open", "connect:dist:keepalive"])  if target is "dist"
    grunt.task.run ["clean:server", "concurrent:server", "livereload-start", "connect:livereload", "open", "watch"]

  grunt.registerTask "test", ["clean:server", "concurrent:test", "connect:test", "mocha"]
  grunt.registerTask "build", ["clean:dist", "useminPrepare", "concurrent:dist", "requirejs", "cssmin", "concat", "uglify", "copy", "rev", "usemin", "jade"]
  grunt.registerTask "default", ["jshint", "test", "build"]
