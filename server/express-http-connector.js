(function() {
  define(function(require) {
    var ExpressHttpConnector;
    return ExpressHttpConnector = (function() {
      function ExpressHttpConnector(config) {
        this.config = config;
        console.log('static files: ' + this.config.rootDir);
      }

      ExpressHttpConnector.prototype.start = function() {
        var app, express, port;
        console.log('* Starting HTTP Connector');
        express = require('express');
        app = express();
        port = 3000;
        app.get('/', function(req, res) {
          return res.redirect('/index.html');
        });
        app.use(express["static"](this.config.rootDir + '/../../dist/client'));
        return app.listen(port);
      };

      return ExpressHttpConnector;

    })();
  });

}).call(this);

//# sourceMappingURL=../build/coffeejs/server/express-http-connector.js.map
