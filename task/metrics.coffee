gulp = require 'gulp'
plato = require 'gulp-plato'

# メトリクス計測タスク
gulp.task 'metrics', ['build:ts'], () ->
  gulp
    .src 'compiled_app/**/*.js'
    .pipe plato 'report'
