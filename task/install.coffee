gulp = require 'gulp'
shell = require 'gulp-shell'


gulp.task 'install', shell.task './node_modules/.bin/bower install'
