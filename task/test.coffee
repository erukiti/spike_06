gulp = require 'gulp'
mocha = require 'gulp-mocha'
plumber = require 'gulp-plumber'

# ユニットテストタスク
gulp.task 'test', ['build:powered'], () ->
  gulp
    .src "./powered/**/*.js"
    .pipe plumber()
    .pipe mocha {reporter: 'dot'}
