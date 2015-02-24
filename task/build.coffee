gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

gulp.task 'build', () ->
  runSeq(
    'clean'
    'lint'
    'typescripts'
    'test'
    'doc'
    'metrics'
    'webpack'
    'copy'
  )