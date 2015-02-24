gulp = require 'gulp'
del = require 'del'

# 作業ディレクトリ削除
gulp.task 'clean', () ->
  del ['./compiled_app', './compiled_test', './dist', './tmp']
