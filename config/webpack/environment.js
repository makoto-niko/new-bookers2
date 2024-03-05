const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: 'popper.js'
  })
)

<<<<<<< HEAD
module.exports = environment
=======
module.exports = environment
>>>>>>> ffcab96c2a58ab026ee9112d49eae8d1d20e3463
