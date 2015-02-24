gulp = require 'gulp'
webpack = require 'webpack'
mocha = require 'gulp-mocha'

config = require './config'

# ユニットテストタスク
gulp.task 'test', () ->
  webpack config.testConfig, (err, stats) ->
    if err
      throw new gutil.PluginError 'test', err

    gulp
      # .src "./tmp/*.js"
      .src "./compiled_test/test/js/*.js"
      .pipe mocha {reporter: 'dot'}
