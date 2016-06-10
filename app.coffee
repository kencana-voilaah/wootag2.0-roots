axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
sass         = require 'node-sass'
browserify   = require 'roots-browserify'
css_pipeline = require 'css-pipeline'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    css_pipeline
      files: ['./assets/bower_components/normalize-scss/normalize-scss/*.scss','assets/css/*.scss']
      out: 'css/main.css'
    browserify
      files: "assets/js/main.coffee"
      out: 'js/build.js'
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
