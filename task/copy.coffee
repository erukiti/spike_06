gulp = require 'gulp'

gulp.task 'copy', () ->
  gulp
    .src './app/**/*.html'
    .pipe gulp.dest './dist'
