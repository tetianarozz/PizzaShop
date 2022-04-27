const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

module.exports = environment

environment.plugins.append('Provide', new webpack.ProvidePlugin({
    Popper: ['popper.js','default']
}))
