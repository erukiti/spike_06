gulp = require 'gulp'
del = require 'del'
plumber = require 'gulp-plumber'
shell = require 'gulp-shell'

config = require './config'

# TypeScript コンパイルタスク


gulp.task 'typescripts', () ->
  del ['./compiled_app', './compiled_test']

  gulp
    .src './app/**/*.ts'
    .pipe plumber()
    .pipe shell './node_modules/.bin/tsc -m commonjs --outDir ./compiled_app/js <%= file.path %>'

  gulp
    .src './test/**/*.ts'
    .pipe plumber()
    .pipe shell './node_modules/.bin/tsc -m commonjs --outDir ./compiled_test <%= file.path %>'

