define (require) ->
    class WsWebSocketConnector
        constructor: ->

        start: ->
            console.log '* Starting socket services'

            WebSocketServer = require('ws').Server
            wss = new WebSocketServer(port: 9876)
            wss.on 'connection', (ws) ->
                ws.on 'message', (message) ->
                    try
                        jmsg = JSON.parse message
                        if jmsg.mtype
                            channel = listeners[jmsg.mtype]
                            _.each channel, (listener) ->
                                listener.onmessage ws, jmsg
                    catch err
                        console.log err.stack
                header =
                    mtype: 'CONNECT',
                    name: 'C H A T S T E R O I D S : World Server',
                    version: 0.1,
                    id: clientId++
                ws.send JSON.stringify(header)


