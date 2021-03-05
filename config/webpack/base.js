const { webpackConfig, merge } = require('@rails/webpacker')
// const NodePolyfillPlugin = require("node-polyfill-webpack-plugin")
const webpack5Polyfills = require('./webpack5Polyfills.js')


module.exports = merge(webpackConfig, webpack5Polyfills)
