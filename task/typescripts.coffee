gulp = require 'gulp'
del = require 'del'
typescript = require 'gulp-typescript'
plumber = require 'gulp-plumber'

config = require './config'

# タイプスクリプトコンパイルタスク
gulp.task 'typescripts', () -> 
  del ['./compiled_app', './compiled_test']

  gulp
    .src './app/**/*.ts'
    .pipe plumber()
    .pipe typescript(
      declarationFiles: true
      noExternalResolve: true
      module: "commonjs"
    )
    .pipe gulp.dest './compiled_app'

  gulp
    .src './test/**/*.ts'
    .pipe plumber()
    .pipe typescript(
      declarationFiles: true
      noExternalResolve: true
      module: "commonjs"
    )
    .pipe gulp.dest './compiled_test'
