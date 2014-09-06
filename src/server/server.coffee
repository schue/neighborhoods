define (require) ->
    class Server
        constructor: (config) ->
            console.log 'Neighborhood Project : Server'
            @config = config

        start: ->
            for serviceName in @config.services
                do (serviceName) ->
                    Service = require('server/' + serviceName)
                    service = new Service(@config)
                    service.start()
