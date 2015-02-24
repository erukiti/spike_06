gulp = require 'gulp'
yuidoc = require 'gulp-yuidoc'
del = require 'del'

# ドキュメント生成タスク
gulp.task 'doc', () ->
  del './doc'

  gulp
    .src "./app/**/*.ts"
    .pipe yuidoc()
    .pipe gulp.dest "./doc"
