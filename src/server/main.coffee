requirejs = require('requirejs')

gameConfig = process.argv[2] ? 'devserver'

requirejs.config
    baseUrl: '.'
    nodeRequire: require

requirejs ['server/server', gameConfig], (Server, config) ->
    config.rootDir = __dirname
    server = new Server(config)
    server.start()
