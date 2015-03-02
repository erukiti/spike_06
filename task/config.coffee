path = require 'path'
webpack = require 'webpack'

webpack = 
    module:
        loaders: [
            {test: /\.css$/, loader: "style!css"}
            {test: /\.less$/, loader: "style!css!less"}
            {test: /\.(ttf|svg|woff|eot|woff2)$/, loader: "url?prefix=font/"}
            {test: /\.(ttf|svg|woff|eot|woff2)\?[-=.a-z0-9]+$/, loader: "url?prefix=font/"}
            {test: /[\/]promise\.js$/, loader: 'exports?Promise'}
            {test: /[\/](localforage|indexeddb|localstorage|websql)\.js$/, loader: 'imports?this=>window'}
        ]

    entry:
        site: ["./app/js/site.js"]
        index: ["./compiled_app/js/index.js"]

    output:
        path: path.join __dirname, '..', 'dist'
        filename: "[name].bundle.js"

    resolve:
        extensions: ['', 'js', 'ts']

module.exports = webpack
