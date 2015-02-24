gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

gulp.task 'default', () ->
  runSeq(
    'typescripts'
    'webpack-dev-server'
  )