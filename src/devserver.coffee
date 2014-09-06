define (require) ->
    loader: 'DemoFileLoader'
    services: [
        'ws-websocket-connector'
        'express-http-connector'
        ]
