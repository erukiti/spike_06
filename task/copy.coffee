gulp = require 'gulp'

# 配布先(dist) に 静的ファイルをコピーする
gulp.task 'copy', () ->
  gulp
    .src './app/**/*.html'
    .pipe gulp.dest './dist'
