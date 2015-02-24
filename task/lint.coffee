gulp = require 'gulp'
tslint = require 'gulp-tslint'

# コードのlintタスク
gulp.task 'lint', () ->
  gulp
    .src './app/**/*.ts'
    .pipe tslint()
    .pipe tslint.report 'prose'