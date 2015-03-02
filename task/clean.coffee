gulp = require 'gulp'
del = require 'del'
shell = require 'gulp-shell'

# 作業ディレクトリ削除
gulp.task 'clean', (cb) ->
  del ['./compiled_app/*', './compiled_test/*', './dist/*', './powered/*', './doc/*']
  cb()
