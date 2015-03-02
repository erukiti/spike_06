gulp = require 'gulp'
guitl = require 'gulp-util'
webpack = require 'webpack'
WebpackDevServer = require 'webpack-dev-server'
open = require 'gulp-open'

config = require './config'

# デバッグ用オンラインサーバ
gulp.task 'webpack-dev-server', ['build:ts:app'], (cb) ->
  config.devtool = 'eval'
  config.debug = true
  config.plugins = []

  gulp.watch './app/**/*.ts', ['test', 'build:ts:app']
  gulp.watch './test/**/*.ts', ['test']

  s = new WebpackDevServer(webpack(config), {
    stats: {colors: true}
    publicPath: '/'
    hot: true
    contentBase: './app'
  })
  s.listen 8080, '0.0.0.0', (err) ->
    if (err) 
      throw new gutil.PluginError 'webpack-dev-server', err

    gulp
      .src './app/index.html'
      .pipe(open('', {url: 'http://localhost:8080/index.html'}))

    cb()

