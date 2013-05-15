# Please note -- because rails asset-pipeline is turned off
# this config is only being used by grunt / yeoman
# that being said, this should be able to be plugged back into a rails app if necessary ...
# please consult gruntfile.js in root for more information / configuration
require 'compass'
require 'compass-colors'
require 'susy'
require 'animate-sass'
require 'stitch'

http_path = "/"
project_path = File.expand_path(File.join(File.dirname(__FILE__), '..'))
sass_dir = "app/assets/styles"
css_dir = "public/stylesheets"
images_dir = "public/images"
fonts_dir = "public/fonts"
http_stylesheets_dir = "stylesheets"
http_images_dir = "images"
http_fonts_dir = "fonts"

# require 'compass-buttons'
# Compass.add_configuration({:sprite_load_path => Compass.configuration.sprite_load_path + [Rails.root.join('app', 'assets', 'sprites')]}, 'sprites')
relative_assets = false
project_style = :stand_alone

# output style
output_style = :compact
# initialize images directory

# disable warnings during production etc
disable_warnings = true

# stop debug information for sass output etc
sass_options = {:debug_info => false, :cache => true}




