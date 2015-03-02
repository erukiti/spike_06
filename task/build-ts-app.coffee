gulp = require 'gulp'
plumber = require 'gulp-plumber'
ts = require 'gulp-typescript'

# TypeScript コンパイルタスク

gulp.task 'build:ts:app', () ->
  gulp
    .src './app/**/*.ts'
    .pipe plumber()
    .pipe ts(module: 'commonjs', target: 'ES5')
    .pipe gulp.dest('compiled_app')
