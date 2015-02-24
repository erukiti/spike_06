gulp = require 'gulp'
webpack = require 'webpack'
mocha = require 'gulp-mocha'

config = require './config'

gulp.task 'test', () ->
  webpack config.testConfig, (err, stats) ->
    if err
      throw new gutil.PluginError 'test', err

    gulp
      .src "./tmp/*.js"
      .pipe mocha {reporter: 'dot'}
