define (require) ->
    angular = require 'angularjs'

    app = angular.module 'neighborhood', []

    app.controller 'DashController', require 'dash'
    app.controller 'MapController', require 'map'

    return app
