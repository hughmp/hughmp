require('./main.css')
require('./../static/media/hughmp.svg')
require('./../static/media/logo.svg')

var Elm = require('./App.elm')

var root = document.getElementById('root')

Elm.App.fullscreen()