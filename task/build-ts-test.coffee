gulp = require 'gulp'
plumber = require 'gulp-plumber'
ts = require 'gulp-typescript'

config = require './config'

# TypeScript コンパイルタスク

gulp.task 'build:ts:test', () ->
  gulp
    .src './test/**/*.ts'
    .pipe plumber()
    .pipe ts(module: 'commonjs', target: 'ES5')
    .pipe gulp.dest('compiled_test')

