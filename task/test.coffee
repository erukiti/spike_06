gulp = require 'gulp'
mocha = require 'gulp-mocha'

# ユニットテストタスク
gulp.task 'test', ['powered'], () ->
  gulp
    .src "./powered/**/*.js"
    .pipe mocha {reporter: 'dot'}
