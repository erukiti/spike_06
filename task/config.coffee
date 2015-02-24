path = require 'path'
_ = require 'lodash'

webpack = 
    module:
        loaders: [
            {test: /\.ts$/, loader:"typescript"}
            {test: /\.css$/, loader: "style!css"}
            {test: /\.less$/, loader: "style!css!less"}
            {test: /\.jsx$/, loader: "jsx?harmony"}
            {test: /\.(ttf|svg|woff|eot|woff2)$/, loader: "url?prefix=font/"}
            {test: /\.(ttf|svg|woff|eot|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "url?prefix=font/"}
            {test: /[\/]promise\.js$/, loader: 'exports?Promise'}
            {test: /[\/](localforage|indexeddb|localstorage|websql)\.js$/, loader: 'imports?this=>window'}
        ]

buildConfig =
    entry:
        site: ["./app/js/site.js"]
        index: ["./compiled_app/js/index.js"]
    output:
        path: path.join __dirname, '..', 'dist'
        filename: "[name].bundle.js"

testConfig = 
    entry:
        test: ["./compiled_test/test/js/person.js"]
    output:
        path: path.join __dirname, '..', 'tmp'
        filename: "[name].bundle.js"

module.exports.buildConfig = _.extend(_.cloneDeep(webpack), buildConfig)
module.exports.testConfig = _.extend(_.cloneDeep(webpack), testConfig)
