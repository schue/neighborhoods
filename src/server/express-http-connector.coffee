__dirname = @__dirname

define (require) ->
    class WsWebSocketConnector
        constructor: ->

        start: ->
            console.log '* Starting HTTP Connector'
            express = require 'express'
            app = express()
            port = 3000

            app.get('/', (req, res) ->
                res.redirect '/index.html'
                )
            app.use(express.static(__dirname + './static'))

            app.listen(port)
