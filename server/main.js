(function() {
  var gameConfig, requirejs, _ref;

  requirejs = require('requirejs');

  gameConfig = (_ref = process.argv[2]) != null ? _ref : 'devserver';

  requirejs.config({
    baseUrl: '.',
    nodeRequire: require
  });

  requirejs(['server/server', gameConfig], function(Server, config) {
    var server;
    config.rootDir = __dirname;
    server = new Server(config);
    return server.start();
  });

}).call(this);

//# sourceMappingURL=../build/coffeejs/server/main.js.map
