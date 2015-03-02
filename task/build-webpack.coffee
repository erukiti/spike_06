gulp = require 'gulp'
webpack = require 'webpack'
ts = require 'gulp-typescript'
plumber = require 'gulp-plumber'

config = require './config'

# webpack のコンパイルタスク
gulp.task 'build:webpack', ['build:ts:app'], (cb) ->
  webpack config, (err, stats) ->
    throw err if err
    cb()
