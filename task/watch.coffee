gulp = require 'gulp'
runSeq = require 'run-sequence'

gulp.task 'watch', () -> 
  runSeq ['build:webpack', 'test', 'copy'], 'open:dist'
  gulp.watch './app/**/*.ts', ['build:webpack', 'test']
  gulp.watch './test/**/*.ts', ['build:webpack', 'test']
  gulp.watch './app/**/*.html', ['copy']