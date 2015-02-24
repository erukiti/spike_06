gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

# product 用 build 設定
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