gulp = require 'gulp'
runSeq = require 'run-sequence'

gulp.task 'watch', (cb) -> 
  runSeq 'clean', ['build:webpack', 'test', 'copy'], 'open:dist'
  gulp.watch './app/**/*.ts', ['build:webpack', 'test']
  gulp.watch './test/**/*.ts', ['test']
  gulp.watch './app/**/*.html', ['copy']

  cb()