gulp = require 'gulp'
runSeq = require 'run-sequence'

config = require './config'

# product 用 build 設定
gulp.task 'build', (cb) ->
  runSeq(
    ['lint', 'build:webpack', 'test', 'doc', 'metrics', 'copy']
  )
  cb()
  