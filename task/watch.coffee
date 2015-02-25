gulp = require 'gulp'
runSeq = require 'run-sequence'

gulp.task 'watch', () -> 
  runSeq 'clean', 'webpack', 'test', 'copy'
  gulp.watch './app/**/*.ts', ['webpack', 'test']
  gulp.watch './test/**/*.ts', ['webpack', 'test']
  gulp.watch './app/**/*.html', ['copy']