gulp = require 'gulp'
runSeq = require 'run-sequence'

gulp.task 'watch', () -> 
  gulp.watch './app/**/*.ts', ['build']
  gulp.watch './test/**/*.ts', ['build']
  gulp.watch './app/**/*.html', ['copy']