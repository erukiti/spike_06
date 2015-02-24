gulp = require 'gulp'
tslint = require 'gulp-tslint'

gulp.task 'lint', () ->
  gulp
    .src './app/**/*.ts'
    .pipe tslint()
    .pipe tslint.report 'prose'