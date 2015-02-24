gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

# gulp のデフォルトタスク
gulp.task 'default', () ->
  runSeq(
    'typescripts'
    'webpack-dev-server'
  )