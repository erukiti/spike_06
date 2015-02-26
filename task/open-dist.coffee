gulp = require 'gulp'
open = require 'gulp-open'

gulp.task 'open:dist', () ->
  gulp
    .src './dist/index.html'
    .pipe(open('', './dist/index.html'))
