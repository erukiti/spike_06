// FixMe: リファクタリングする。特に分割

var gulp = require('gulp');
var gutil = require('gulp-util');
var webpack = require('webpack');
var WebpackDevServer = require('webpack-dev-server');
var webpackConfig = require('./webpack.config.js');
var open = require("gulp-open");
var yuidoc = require('gulp-yuidoc');
var mocha = require('gulp-mocha');
var del = require('del');
var typescript = require('gulp-typescript');
var plumber = require('gulp-plumber');
var runSeq = require('run-sequence');
var path = require('path');
var tslint = require('gulp-tslint');
var beautifier = require('gulp-jsbeautifier');
var shell = require('gulp-shell');
var plato = require('gulp-plato')

var buildConfig = Object.create(webpackConfig);
buildConfig.entry = {
  site: ["./app/js/site.js"],
  index: ["./compiled_app/js/index.js"]
};
buildConfig.output = {
  path: path.join(__dirname, 'dist'),
  filename: "[name].bundle.js"
};

var testConfig = Object.create(webpackConfig);
testConfig.entry = {
  test: ["./compiled_test/js/person.js"]
}
testConfig.output = {
  path: path.join(__dirname, 'tmp'),
  filename: "[name].bundle.js"
}


gulp.task('default', ['webpack-dev-server']);
gulp.task('build', ['lint', 'test', 'metrics', 'doc', 'webpack', 'copy']);

gulp.task('format', function() {
  gulp
    .src('./app/**/*.ts', {read: false})
    .pipe(shell('tsfmt -r <%= file.path %>'))
})

gulp.task('clean', function () {
  del(['dist/*', 'compiled_app/*', 'compiled_test/*']);
});

gulp.task('lint', function () {
  gulp
    .src('./app/**/*.ts')
    .pipe(tslint())
    .pipe(tslint.report('prose'));
});

gulp.task('ts-app', ['clean'], function () {
  gulp
    .src(['./app/**/*.ts'])
    .pipe(plumber())
    .pipe(typescript({
      declarationFiles: true,
      noExternalResolve: true,
      module: "commonjs"
    }))
    .pipe(gulp.dest('compiled_app'));
});

gulp.task('ts-test', ['clean'], function () {
  gulp
    .src(['./test/**/*.ts'])
    .pipe(plumber())
    .pipe(typescript({
      declarationFiles: true,
      noExternalResolve: true,
      module: "commonjs"
    }))
    .pipe(gulp.dest('compiled_test'));
});

gulp.task('copy', function() {
  gulp
    .src('./app/**/*.html')
    .pipe(gulp.dest('./dist'))
});

gulp.task('metrics', ['ts-app'], function() {
  gulp
    .src('./compiled_app/**/*.js')
    .pipe(plato('report'))
});

gulp.task('webpack-dev-server', ['ts-app'], function () {
  buildConfig.devtool = 'eval';
  buildConfig.debug = true;
  buildConfig.plugins = [
  ];


  new WebpackDevServer(webpack(buildConfig), {
    stats : {colors: true},
    publicPath : '/'
  }).listen(8080, '0.0.0.0', function (err) {
      if (err) throw new gutil.PluginError('webpack-dev-server', err);

      gulp.src('./app/index.html')
        // .pipe(open('', {url: 'http://localhost:8080/webpack-dev-server/app/index.html'}));
        .pipe(open('', {url: 'http://localhost:8080/app/index.html'}));
    });
});

gulp.task('doc', function () {
  gulp
    .src("./app/js/*")
    .pipe(yuidoc())
    .pipe(gulp.dest("./doc"));
});

gulp.task('test', ['ts-app', 'ts-test'], function() {
  webpack(testConfig, function(err, stats) {
    if (err) throw new gutil.PluginError('test', err);

    gulp
      .src("./tmp/*.js")
      .pipe(mocha({reporter: 'dot'}));
  })
});

gulp.task('webpack', function () {
  buildConfig.plugins = [
    new webpack.DefinePlugin({
      'process.env': {
        'NODE_ENV': JSON.stringify('production')
      }
    }),
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.UglifyJsPlugin()
  ];

  webpack(buildConfig, function (err, stats) {
    if (err) throw new gutil.PluginError('build', err);
    gutil.log('[build]', stats.toString({
      colors: true
    }));
  });
});

