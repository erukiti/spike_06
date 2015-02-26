gulp = require 'gulp'
plumber = require 'gulp-plumber'
shell = require 'gulp-shell'

config = require './config'

# TypeScript コンパイルタスク


gulp.task 'build:ts', () ->
  gulp
    .src './app/**/*.ts'
    .pipe plumber()
    .pipe shell './node_modules/.bin/tsc -m commonjs --outDir ./compiled_app/js <%= file.path %>'

  gulp
    .src './test/**/*.ts'
    .pipe plumber()
    .pipe shell './node_modules/.bin/tsc -m commonjs --outDir ./compiled_test <%= file.path %>'

