define (require) ->
    class Server
        constructor: (config) ->
            console.log 'C H A T S T E R O I D S : Server'
            @config = config

        start: ->
            for serviceName in @config.services
                do (serviceName) ->
                    Service = require('server/' + serviceName)
                    service = new Service(@config)
                    service.start()
