gulp = require 'gulp'
del = require 'del'

gulp.task 'clean', () ->
  del ['./compiled_app/*', './compiled_test/*', './dist/*', './tmp/*']
