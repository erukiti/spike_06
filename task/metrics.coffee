gulp = require 'gulp'
plato = require 'gulp-plato'

gulp.task 'metrics', () ->
  gulp
    .src 'compiled_app/**/*.js'
    .pipe plato 'report'
