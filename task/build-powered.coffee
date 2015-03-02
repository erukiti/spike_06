gulp = require 'gulp'
plumber = require 'gulp-plumber'
espower = require 'gulp-espower'

# espower (power-assert 前準備)

gulp.task 'build:powered', ['build:ts:test'], () ->
  gulp
    .src './compiled_test/**/*.js'
    .pipe plumber()
    .pipe espower()
    .pipe gulp.dest 'powered'
