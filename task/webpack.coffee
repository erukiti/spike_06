gulp = require 'gulp'
webpack = require 'webpack'
gutil = require 'gulp-util'

config = require './config'

# webpack のコンパイルタスク
gulp.task 'webpack', () ->
  buildConfig = config.buildConfig
  buildConfig.plugins = [
    new webpack.DefinePlugin
      'process.env':
        'NODE_ENV': JSON.stringify 'production'
    new webpack.optimize.DedupePlugin
    new webpack.optimize.UglifyJsPlugin
  ]

  webpack buildConfig, (err, stats) ->
    if err
      throw new gutil.PluginError 'build', err

    gutil.log '[build]', stats.toString {colors: true}

