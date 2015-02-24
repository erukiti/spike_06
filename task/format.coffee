gulp = require 'gulp'
shell = require 'gulp-shell'

# コード整形タスク
gulp.task 'format', () ->
  gulp
    .src './app/**/*.ts', {read: false}
    .pipe shell 'tsfmt -r <%= file.path %>'
