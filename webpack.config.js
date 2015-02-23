webpack = require('webpack')

module.exports = {
    module: {
        loaders: [
            {test: /\.ts$/, loader:"typescript"},
            {test: /\.css$/, loader: "style!css"},
            {test: /\.less$/, loader: "style!css!less"},
            {test: /\.jsx$/, loader: "jsx?harmony"},
            {test: /\.(ttf|svg|woff|eot|woff2)$/, loader: "url?prefix=font/"},
            {test: /\.(ttf|svg|woff|eot|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/, loader: "url?prefix=font/"},
            {test: /[\/]promise\.js$/, loader: 'exports?Promise'},
            {test: /[\/](localforage|indexeddb|localstorage|websql)\.js$/, loader: 'imports?this=>window'},
        ]
    }
};
