gulp = require 'gulp'
espower = require 'gulp-espower'

gulp.task 'build:powered', ['build:ts'], () ->
  gulp
    .src './compiled_test/**/*.js'
    .pipe espower()
    .pipe gulp.dest 'powered'
