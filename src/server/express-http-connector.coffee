define (require) ->
    class ExpressHttpConnector
        constructor: (@config) ->
            console.log('static files: ' + @config.rootDir)

        start: ->
            console.log '* Starting HTTP Connector'
            express = require 'express'
            app = express()
            port = 3000

            app.get('/', (req, res) ->
                res.redirect '/index.html'
                )
            app.use(express.static(@config.rootDir + '/../../static'))

            app.listen(port)
