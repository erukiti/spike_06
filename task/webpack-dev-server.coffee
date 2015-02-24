gulp = require 'gulp'
guitl = require 'gulp-util'
webpack = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'
open = require 'gulp-open'

config = require './config'
buildConfig = config.buildConfig

gulp.task 'webpack-dev-server', (callback) ->
  buildConfig.devtool = 'eval'
  buildConfig.debug = true
  buildConfig.plugins = []

  console.dir buildConfig

  s = new WebpackDevServer(webpack(buildConfig), {stats: {colors: true}, publicPath: '/'})
  s.listen 8080, '0.0.0.0', (err) ->
    if (err) 
      throw new gutil.PluginError 'webpack-dev-server', err

    gulp
      .src './app/index.html'
      .pipe(open('', {url: 'http://localhost:8080/app/index.html'}))

  callback
