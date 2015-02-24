gulp = require 'gulp'
yuidoc = require 'gulp-yuidoc'

gulp.task 'doc', () ->
  gulp
    .src "./app/**/*.ts"
    .pipe yuidoc()
    .pipe gulp.dest "./doc"
