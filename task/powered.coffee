gulp = require 'gulp'
espower = require 'gulp-espower'
del = require 'del'

gulp.task 'powered', ['typescripts'], () ->
  del './powered/'

  gulp
    .src './compiled_test/**/*.js'
    .pipe espower()
    .pipe gulp.dest 'powered'
