gulp = require 'gulp'
runSeq = require 'run-sequence'

gulp.task 'watch', () -> 
  gulp.watch './app/**/*.ts', ['webpack', 'test']
  gulp.watch './test/**/*.ts', ['webpack', 'test']
  gulp.watch './app/**/*.html', ['copy']