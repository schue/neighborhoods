(function() {
  define(function(require) {
    var Server;
    return Server = (function() {
      function Server(config) {
        this.config = config;
        console.log('Neighborhood Project : Server');
      }

      Server.prototype.start = function() {
        var config, serviceName, _i, _len, _ref, _results;
        config = this.config;
        _ref = config.services;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          serviceName = _ref[_i];
          _results.push((function(serviceName) {
            var Service, service;
            Service = require('server/' + serviceName);
            service = new Service(config);
            return service.start();
          })(serviceName));
        }
        return _results;
      };

      return Server;

    })();
  });

}).call(this);

//# sourceMappingURL=../build/coffeejs/server/server.js.map
