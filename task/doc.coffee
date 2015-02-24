gulp = require 'gulp'
yuidoc = require 'gulp-yuidoc'

# ドキュメント生成タスク
gulp.task 'doc', () ->
  gulp
    .src "./app/**/*.ts"
    .pipe yuidoc()
    .pipe gulp.dest "./doc"
