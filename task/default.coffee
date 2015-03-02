gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

# gulp のデフォルトタスク
gulp.task 'default', (cb) ->
  runSeq(
    'webpack-dev-server'
  )
  cb()